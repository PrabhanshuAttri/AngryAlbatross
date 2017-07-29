# Angry Albatross
Get reminder calls via skype.

###### Note: Skype calls have some restirctions like calls within India are not allowed
[Source](https://support.skype.com/en/faq/FA34487/why-can-t-i-make-calls-to-india-from-india)

## Requirements
    Skype with credits

## Usage
    chmod +x AngryAlbatross.sh
    ./AngryAlbatross.sh -p +phone -h hours -m minutes -s seconds -d delay_between_calls -n number_of_times


### Arguments:
    p: to whom the reminding call should be made like +91XXXXXXXXXX
    h: hrs after which call will be placed
    m: minutes after which call will be placed
    s: seconds after which call will be placed
    d: delay between consecutive calls
    n: number of times the call will be made

    eg: ./AngryAlbatross.sh -p +91XXXXXXXXXX -h 4 -m 3 -s 10 -d 30 -n 5

