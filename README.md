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
- declarations: store the created declarations here

# Example
The *build_declaration.sh* shell script is a wrapper for the *jinja2* cli command.  It accepts a single argument which is the name used for the data YAML file and the Jinja2 template. The second argument is the type of declaration being built.  It defaults to AS3 but you can pass do to create Declarative Onboarding declarations; see example in examples section.

## Single HTTP Application
```bash
./build_declaration.sh single_http_apps 
f5 login --authentication-provider bigip --host 192.0.2.10 --user myuser
f5 bigip extension as3 verify
f5 bigip extension as3 create --declaration as3.json
```

## BIG-IP DNS with 2 Network Interfaces
```bash
./build_declaration.sh dns_2nic do 
f5 login --authentication-provider bigip --host 192.0.2.10 --user myuser
f5 bigip extension do verify
f5 bigip extension do create --declaration dns_2nic.json
```

# Included Demos
## Application Service 3 Extension (AS3)
- Single HTTP application
- Multiple HTTP applications
- DNS WideIP with a generic host (example for Kubernetes)

## Declarative Onboarding
- LTM with 3 Network Interfaces
- DNS with 2 Network Interfaces

# Development
If you have an example you would like to add please make a pull request.