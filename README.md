# Bellboy

**Tool to log time on Freckle**

## Installation

### Get your personal access token from Freckle

In order to use Bellboy, you need to know two things: the subdomain of your
company and an access token from Freckle. To get this access token, follow
these steps

- Login to Freckle
- On the left sidebar, click on Connected Apps
- Select the "Freckle API" tab
- Click the "Settings…" beside "Personal Access Token"
- Follow the prompts to generate Personal Access Token

With these information, edit the content of `config.sample` and store it in
`~/.bellboy`

### Buildiing Bellboy

- Clone the repository
- Run `mix escript.build`

## How to use

- Start with `./bellboy -h`

---

Notes:

- Since EScript apps are compiled into an executable, all variables required
  for its smooth running should be available at copmile time. This is the
reason you would have to get your personal access token before compiling the
app. This is an inconvenience, and I am still looking for a work around
