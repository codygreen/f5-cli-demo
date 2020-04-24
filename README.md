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

# Example
The *build_declaration.sh* shell script is a wrapper for the *jinja2* cli command.  It accepts a single argument which is the name used for the data YAML file and the Jinja2 template. 

```bash
./build_declaration.sh single_http_apps 
f5 login --authentication-provider bigip --host 192.0.2.10 --user myuser
f5 bigip extension as3 verify
f5 bigip extension as3 create --declaration as3.json
```

# Included Demos
## Application Service 3 Extension (AS3)
- Single HTTP application
- Multiple HTTP applications

## Declarative Onboarding
- LTM with 3 Network Interfaces

# Development
If you have an example you would like to add please make a pull request.