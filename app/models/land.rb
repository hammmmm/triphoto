class Land < ActiveHash::Base
  self.data = [
    {id: 1, name: "Iceland"},{id: 2, name: "Ireland"},{id: 3, name: "Afghanistan"},{id: 4, name: "United States"},{id: 5, name: "Virgin Islands, U.S."},
    {id: 6, name: "American Samoa"},{id: 7, name: "United Arab Emirates"},{id: 8, name: "Algeria"},{id: 9, name: "Argentina"},{id: 10, name: "Aruba"},
    {id: 11, name: "Albania"},{id: 12, name: "Armenia"},{id: 13, name: "Anguilla"},{id: 14, name: "Angola"},{id: 15, name: "Antigua and Barbuda"},
    {id: 16, name: "United Kingdom"},{id: 17, name: "British Indian Ocean Territory"},{id: 18, name: "Virgin Islands, British"},{id: 19, name: "Israel"},{id: 20, name: "Italy"},
    {id: 21, name: "Iraq"},{id: 22, name: "Iran, Islamic Republic of"},{id: 23, name: "India"},{id: 24, name: "Indonesia"},{id: 25, name: "Wallis and Futuna"},
    {id: 26, name: "Uganda"},{id: 27, name: "Ukraine"},{id: 28, name: "Uzbekistan"},{id: 29, name: "Uruguay"},{id: 30, name: "Ecuador"},
    {id: 31, name: "Egypt"},{id: 32, name: "Estonia"},{id: 33, name: "Ethiopia"},{id: 34, name: "Eritrea"},{id: 35, name: "El Salvador"},
    {id: 36, name: "Australia"},{id: 37, name: "Austria"},{id: 38, name: "Åland Islands"},{id: 39, name: "Oman"},{id: 40, name: "Netherlands"},
    {id: 41, name: "Ghana"},{id: 42, name: "Cape Verde"},{id: 43, name: "Guernsey"},{id: 44, name: "Guyana"},{id: 45, name: "Kazakhstan"},
    {id: 46, name: "Qatar"},{id: 47, name: "United States Minor Outlying Islands"},{id: 48, name: "Canada"},{id: 49, name: "Gabon"},{id: 50, name: "Cameroon"},
    {id: 51, name: "Gambia"},{id: 52, name: "Cambodia"},{id: 53, name: "Northern Mariana Islands"},{id: 54, name: "Guinea"},{id: 55, name: "Guinea-Bissau"},
    {id: 56, name: "Cyprus"},{id: 57, name: "Cuba"},{id: 58, name: "Curaçao"},{id: 59, name: "Greece"},{id: 60, name: "Kiribati"},
    {id: 61, name: "Kyrgyzstan"},{id: 62, name: "Guatemala"},{id: 63, name: "Guadeloupe"},{id: 64, name: "Guam"},{id: 65, name: "Kuwait"},
    {id: 66, name: "Cook Islands"},{id: 67, name: "Greenland"},{id: 68, name: "Christmas Island"},{id: 69, name: "Georgia"},{id: 70, name: "Grenada"},
    {id: 71, name: "Croatia"},{id: 72, name: "Cayman Islands"},{id: 73, name: "Kenya"},{id: 74, name: "Côte d'Ivoire"},{id: 75, name: "Cocos (Keeling) Islands"},
    {id: 76, name: "Costa Rica"},{id: 77, name: "Comoros"},{id: 78, name: "Colombia"},{id: 79, name: "Congo"},{id: 80, name: "Congo, the Democratic Republic of the"},
    {id: 81, name: "Saudi Arabia"},{id: 82, name: "South Georgia and the South Sandwich Islands"},{id: 83, name: "Samoa"},{id: 84, name: "Sao Tome and Principe"},{id: 85, name: "Saint Barthélemy"},
    {id: 86, name: "Zambia"},{id: 87, name: "Saint Pierre and Miquelon"},{id: 88, name: "San Marino"},{id: 89, name: "Saint Martin"},{id: 90, name: "Sierra Leone"},
    {id: 91, name: "Djibouti"},{id: 92, name: "Gibraltar"},{id: 93, name: "Jersey"},{id: 94, name: "Jamaica"},{id: 95, name: "Syrian Arab Republic"},
    {id: 96, name: "Singapore"},{id: 97, name: "Sint Maarten"},{id: 98, name: "Zimbabwe"},{id: 99, name: "Switzerland"},{id: 100, name: "Sweden"},
    {id: 101, name: "Sudan"},{id: 102, name: "Svalbard and Jan Mayen"},{id: 103, name: "Spain"},{id: 104, name: "Suriname"},{id: 105, name: "Sri Lanka"},
    {id: 106, name: "Slovakia"},{id: 107, name: "Slovenia"},{id: 108, name: "Swaziland"},{id: 109, name: "Seychelles"},{id: 110, name: "Equatorial Guinea"},
    {id: 111, name: "Senegal"},{id: 112, name: "Serbia"},{id: 113, name: "Saint Kitts and Nevis"},{id: 114, name: "Saint Vincent and the Grenadines"},{id: 115, name: "Saint Helena, Ascension and Tristan da Cunha"},
    {id: 116, name: "Saint Lucia"},{id: 117, name: "Somalia"},{id: 118, name: "Solomon Islands"},{id: 119, name: "Turks and Caicos Islands"},{id: 120, name: "Thailand"},
    {id: 121, name: "Korea"},{id: 122, name: "Taiwan"},{id: 123, name: "Tajikistan"},{id: 124, name: "Tanzania"},{id: 125, name: "Czech Republic"},
    {id: 126, name: "Chad"},{id: 127, name: "Central African Republic"},{id: 128, name: "China"},{id: 129, name: "Tunisia"},{id: 130, name: "Korea, Democratic People's Republic of"},
    {id: 131, name: "Chile"},{id: 132, name: "Tuvalu"},{id: 133, name: "Denmark"},{id: 134, name: "Germany"},{id: 135, name: "Togo"},
    {id: 136, name: "Tokelau"},{id: 137, name: "Dominican Republic"},{id: 138, name: "Dominica"},{id: 139, name: "Trinidad and Tobago"},{id: 140, name: "Turkmenistan"},
    {id: 141, name: "Turkey"},{id: 142, name: "Tonga"},{id: 143, name: "Nigeria"},{id: 144, name: "Nauru"},{id: 145, name: "Namibia"},
    {id: 146, name: "Antarctica"},{id: 147, name: "Niue"},{id: 148, name: "Nicaragua"},{id: 149, name: "Niger"},{id: 150, name: "Japan"},
    {id: 151, name: "Western Sahara"},{id: 152, name: "New Caledonia"},{id: 153, name: "New Zealand"},{id: 154, name: "Nepal"},{id: 155, name: "Norfolk Island"},
    {id: 156, name: "Norway"},{id: 157, name: "Heard Island and McDonald Islands"},{id: 158, name: "Bahrain"},{id: 159, name: "Haiti"},{id: 160, name: "Pakistan"},
    {id: 161, name: "Vatican City State"},{id: 162, name: "Panama"},{id: 163, name: "Vanuatu"},{id: 164, name: "Bahamas"},{id: 165, name: "Papua New Guinea"},
    {id: 166, name: "Bermuda"},{id: 167, name: "Palau"},{id: 168, name: "Paraguay"},{id: 169, name: "Barbados"},{id: 170, name: "Palestinian Territory"},
    {id: 171, name: "Hungary"},{id: 172, name: "Bangladesh"},{id: 173, name: "Timor-Leste"},{id: 174, name: "Pitcairn"},{id: 175, name: "Fiji"},
    {id: 176, name: "Philippines"},{id: 177, name: "Finland"},{id: 178, name: "Bhutan"},{id: 179, name: "Bouvet Island"},{id: 180, name: "Puerto Rico"},
    {id: 181, name: "Faroe Islands"},{id: 182, name: "Falkland Island"},{id: 183, name: "Brazil"},{id: 184, name: "France"},{id: 185, name: "French Guiana"},
    {id: 186, name: "French Polynesia"},{id: 187, name: "French Southern Territories"},{id: 188, name: "Bulgaria"},{id: 189, name: "Burkina Faso"},{id: 190, name: "Brunei Darussalam"},
    {id: 191, name: "Burundi"},{id: 192, name: "Viet Nam"},{id: 193, name: "Benin"},{id: 194, name: "Venezuela"},{id: 195, name: "Belarus"},
    {id: 196, name: "Belize"},{id: 197, name: "Peru"},{id: 198, name: "Belgium"},{id: 199, name: "Poland"},{id: 200, name: "Bosnia and Herzegovina"},
    {id: 201, name: "Botswana"},{id: 202, name: "Bonaire"},{id: 203, name: "Bolivi"},{id: 204, name: "Portugal"},{id: 205, name: "Hong Kong"},
    {id: 206, name: "Honduras"},{id: 207, name: "Marshall Islands"},{id: 208, name: "Macao"},{id: 209, name: "Macedonia"},{id: 210, name: "Mayotte"},
    {id: 211, name: "Malawi"},{id: 212, name: "Mali"},{id: 213, name: "Malta"},{id: 214, name: "Martinique"},{id: 215, name: "Malaysia"},
    {id: 216, name: "Isle of Man"},{id: 217, name: "Micronesia"},{id: 218, name: "South Africa"},{id: 219, name: "South Sudan"},{id: 220, name: "Myanmar"},
    {id: 221, name: "Mexico"},{id: 222, name: "Mauritius"},{id: 223, name: "Mauritania"},{id: 224, name: "Mozambique"},{id: 225, name: "Monaco"},
    {id: 226, name: "Maldives"},{id: 227, name: "Moldova"},{id: 228, name: "Morocco"},{id: 229, name: "Mongolia"},{id: 230, name: "Montenegro"},
    {id: 231, name: "Montserrat"},{id: 232, name: "Jordan"},{id: 233, name: "Lao People's Democratic Republic"},{id: 234, name: "Latvia"},{id: 235, name: "Lithuania"},
    {id: 236, name: "Libya"},{id: 237, name: "Liechtenstein"},{id: 238, name: "Liberia"},{id: 239, name: "Romania"},{id: 240, name: "Luxembourg"},
    {id: 241, name: "Rwanda"},{id: 242, name: "Lesotho"},{id: 243, name: "Lebanon"},{id: 244, name: "Réunion"},{id: 245, name: "Russian Federation"}
  ]
end