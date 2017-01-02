# callook
A command-line utility to lookup a callsign in the FCC's Universal Licensing System database.

### Usage

```bash
$ git clone git@github.com:srbdev/callook.git
$ cd callbook
$ ./callook.rb
Enter callsign: W1JDD

Type: PERSON
Callsign: W1JDD
Class: GENERAL

JOSHUA D DICK
23 DIGITAL DR. UNIT 112
NASHUA, NH 03062

Effective: 06/19/2009
Expires: 06/19/2019
FCC ULS lookup: http://wireless2.fcc.gov/UlsApp/UlsSearch/license.jsp?licKey=3112513
```

### Source
The script uses the following [API](https://callook.info/api_reference.php) from the site [https://callook.info/](https://callook.info/), kindly hosted by [Josh Dick](http://joshdick.net/home).
