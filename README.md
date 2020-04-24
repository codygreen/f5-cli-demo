# F5 CLI Demo
Demonstration of the F5 CLI to configure and deploy various F5 product offerings

# Dependencies
For these demos we're leveraging the following tools:
 - [F5 CLI](https://clouddocs.f5.com/sdk/f5-cli/)
 - [Jinja2](https://pypi.org/project/Jinja2/)
 - [Jinja2-CLI](https://pypi.org/project/jinja2-cli/)

Please follow the links to install the dependencies.

# Folder Structure
The included demos will use the following folder structure:
- data: contains yaml file with the Jinja2 variable values
- templates: contains the Jinja2 templates 
- files: store the created declarations here

# Demo
```bash
jinja2 ./templates/single_http_app.as3.j2 ./data/singe_http_app.yml --format=yaml > files/single_http_app.json
f5 login --authentication-provider bigip --host 192.0.2.10 --user myuser
f5 bigip extension as3 verify
f5 bigip extension as3 create --declaration as3.json
```