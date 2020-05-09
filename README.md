# XML Data Parser
### A simple XML parser that converts an xml file to json

#### Input 
```xml
<InvioPostale unique_id="9932" office="Poste Piazza Mazzini Roma">
  <Topic>Raccomandate auguri di natale</Topic>
  <data>
      <invio id="1">
        <FirstName>Giovanni</FirstName>
        <LastName>Panasiti</LastName>
        <ContactNo>1234567890</ContactNo>
        <AttachmentName>cartolina_auguri_123.pdf</AttachmentName>
        <Address>
             <City>ROMA RM</City>
             <Street>Via di monte del gallo 51</Street>
             <Zip>00165</Zip>
             <Country>Italy</Country>
        </Address>
      </invio>
      <invio id="2">
        <FirstName>Niccolò</FirstName>
        <LastName>Cirone</LastName>
        <ContactNo>434334344334</ContactNo>
        <AttachmentName>cartolina_vacanze.pdf</AttachmentName>
        <Address>
             <City>ROMA RM</City>
             <Street>Via di monte del gallo 101</Street>
             <Zip>00165</Zip>
             <Country>Italy</Country>
        </Address>
      </invio>
      <invio id="3">
        <FirstName>Giuseppe</FirstName>
        <LastName>Dell'Ombra</LastName>
        <ContactNo>32323222</ContactNo>
        <AttachmentName>cartolina_supermercato.pdf</AttachmentName>
        <Address>
             <City>ROMA RM</City>
             <Street>Via tiburtina 101</Street>
             <Zip>00185</Zip>
             <Country>Italy</Country>
        </Address>
      </invio>
  </data>
</InvioPostale>

```

### Output
```json
{
   "unique_id":"9932",
   "office":"Poste Piazza Mazzini Roma",
   "Topic":"Raccomandate auguri di natale",
   "data":[
      {
         "id":"1",
         "FirstName":"Giovanni",
         "LastName":"Panasiti",
         "ContactNo":"1234567890",
         "AttachmentName":"cartolina_auguri_123.pdf",
         "Address":{
            "City":"ROMA RM",
            "Street":"Via di monte del gallo 51",
            "Zip":"00165",
            "Country":"Italy"
         }
      },
      {
         "id":"2",
         "FirstName":"Niccolò",
         "LastName":"Cirone",
         "ContactNo":"434334344334",
         "AttachmentName":"cartolina_vacanze.pdf",
         "Address":{
            "City":"ROMA RM",
            "Street":"Via di monte del gallo 101",
            "Zip":"00165",
            "Country":"Italy"
         }
      },
      {
         "id":"3",
         "FirstName":"Giuseppe",
         "LastName":"Dell'Ombra",
         "ContactNo":"32323222",
         "AttachmentName":"cartolina_supermercato.pdf",
         "Address":{
            "City":"ROMA RM",
            "Street":"Via tiburtina 101",
            "Zip":"00185",
            "Country":"Italy"
         }
      }
   ]
}
```