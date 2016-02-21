http://saasy.chesnowitz.com/
http://book.chesnowitz.com/
http://blog.chesnowitz.com/
http://stock.chesnowitz.com/
http://photo.chesnowitz.com/
http://scrape.chesnowitz.com/
heroku addons:create sendgrid:starter
target="_blank" href="http://saasy.chesnowitz.com/"
target="_blank" href="http://book.chesnowitz.com/"
target="_blank" href="http://blog.chesnowitz.com/"
target="_blank" href="http://stock.chesnowitz.com/"
target="_blank" href="http://photo.chesnowitz.com/"
target="_blank" href="http://scrape.chesnowitz.com/"

def allow_iframe_requests
  response.headers.delete('X-Frame-Options')
end

  place in homepage controller  before_filter :allow_iframe_requests
  
  rails g scaffold Quote client:string pages:string images:string hosting:string domain_name:string design:text terms_conditions:boolean user_registration:string user_registration_details:text budget:integer
  
  
  	Images supplied by you, as desired and appropriate, will be incorporated. Professional stock images may be used; if these carry a cost, your approval will be sought first.
	
Design/Code:	Site will have attractive visual design, created with your feedback and to your satisfaction, and be easily navigable and usable. Code will be W3C-standard HTML and CSS, and pages will be designed to display well on all major browsers at all common monitor resolutions.

Usability:	Simplicity, cleanness of visual design, and ease of operation for the end-user will be high-priority considerations at each stage of the design process. 

Dynamic Apps:	[LIST ANY INTERACTIVE OR DATA-DRIVEN FEATURES OR FUNCTIONS ONE BY ONE, DESCRIBING EXACTLY WHAT THEY WILL ALLOW THE USER TO DO. INCLUDE A DESCRIPTION OF ANY ADMINISTRATION PAGES AND WHAT THEY WILL ALLOW THE CLIENT TO DO.]

Web Hosting:	[DETAILS: WHERE SITE WILL BE HOSTED, COST]

Domain Name:	[DETAILS OF WHAT DOMAIN NAME(S) ARE REGISTERED OR WILL BE REGISTERED, WITH WHAT REGISTRAR, IN WHOSE NAME, AT WHAT COST]

Search Engines:	[DESCRIBE SPECIFIC MEASURES WHICH WILL BE TAKEN, AND WHAT CAN AND CANNOT BE PROMISED]

Testing:	Web site will be tested for compatibility with all common operating systems, browsers and monitor resolutions according to standard company policy [INCLUDE SPECIFICS IF DESIRED]

Site Statistics:	Detailed site statistics are provided by the web host, and will be easily accessible to you at any time.

Domain Email:	[IF DOMAIN EMAIL ADDRESSES WILL BE SET UP, PROVIDE DETAILS]

Costs:	Web development fee: $[NUMBER]. This figure is an estimate, not a quote. It is based on the information provided, and may be 
inappropriate if additional information is forthcoming, or specifications change.

Web hosting fee (a separate charge) will be $[NUMBER] for the first year plus a $[NUMBER] setup fee. 

Going forward, [COMPANY] will continue to be invoiced for web hosting charges once a year by [WEB DESIGN FIRM]. 

Payment Terms:	One-third of total web development fee invoiced and due before work begins. A second one-third as well as the web hosting charge invoiced when page design templates are completed. Balance, adjusted for any changes, invoiced upon delivery of working application. All invoices are Net 10 Days.

Change Orders:	The addition of pages or significant functions or features not specified here may result in additional costs; [WEB DESIGN FIRM] will make this clear via Change Orders. 

Contract:	A standard Agreement and Specification will be provided upon verbal acceptance of this estimate.

		This estimate is good for 60 days from the date above.

Schedule:	Work will begin within one week of signing of contract and receipt of deposit payment. Approximately [NUMBER] weeks will be required from start to finish, assuming that the processes of providing content, feedback, and approval are free from delays.

Future Updates:	[DESCRIBE DETAILS OF AVAILABILITY AND BILLING ARRANGEMENTS FOR POST-LAUNCH MAINTENANCE]