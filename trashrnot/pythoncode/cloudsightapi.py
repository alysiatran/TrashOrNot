import cloudsight

auth = cloudsight.SimpleAuth('EUVIyy2Rp_OGH7pm8z9oxA')
api = cloudsight.API(auth)
auth = cloudsight.OAuth('EUVIyy2Rp_OGH7pm8z9oxA', 'xqgUfGKc4SfKUW9CSeZeXw')
api = cloudsight.API(auth)

with open('sun.jpg', 'rb') as f:
    response = api.image_request(f, 'sun.jpg', {
        'image_request[locale]': 'en-US',
    })

'''
response = api.remote_image_request('http://www.example.com/image.jpg', {
    'image_request[locale]': 'en-US',
})
'''

status = api.image_response(response['token'])
if status['status'] != cloudsight.STATUS_NOT_COMPLETED:
    # Done!
    pass
    
status = api.wait(response['token'], timeout=30)
