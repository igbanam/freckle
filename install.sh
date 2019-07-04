if [[ ! -x `which elixir` ]]
then
  brew install elixir
fi

mix local.hex --force
mix local.rebar --force

mix deps.get
mix deps.compile

# get their personal access token
echo "Do you have your Freckle personal access token copied?"
echo "Check the README for steps on how to get this from Freckle."
read -p "Paste your Personal Access Token: " personal_access_token

# write their personal access token into ~/.bellboy
echo PERSONAL_ACCESS_TOKEN=${personal_access_token} > ~/.bellboy

# get their company domain
echo Enter your company domain name.
echo For Andela, use "andela.com"
read -p "Domain: " company_domain

# add company domain to ~/.bellboy
echo DOMAIN=${company_domain} >> ~/.bellboy

mix escript.build

mv ./bellboy /usr/local/bin
