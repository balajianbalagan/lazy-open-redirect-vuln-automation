# lazy-open-redirect-vuln-automation
<ul>
<li>Crawl the domain</li> 
<li>Fuzz the parameters</li>
  <li>Replace the ?=http:// parameters with evil.com</li>
  <li>Analyze modified parameters in one step </li>
</ul>

<h1>Usage of the repo :</h1>
<ol>
  <li>Clone the repo using the command <strong>git clone https://github.com/balajianbalagan/lazy-open-redirect-vuln-automation.git</strong></li>
  <li>Run the command using <h5 style="bg-color:#A8A8A8;">./lora.sh $1(TARGET.COM) $2(YOUR_CUSTOM_SUBDOMAIN.COM)</h5></li>
  <li>The file structure is shown as below :</li>
![image](https://user-images.githubusercontent.com/42893328/152653295-02f7b3c2-0f29-4484-82d4-fb2bc06e2d94.png)
</ol>

<h1><i>Note : Only possible open redirect vulnerabilties endpoints can be found by this tool</i></h1>

