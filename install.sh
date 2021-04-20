# -Nはパスフレーズの指定、-fはキーファイル名の指定
mkdir .ssh
ssh-keygen -N '' -f .ssh/id_rsa
cat .ssh/id_rsa.pub 

echo 'Githubにキーを登録したら'
echo 'curl -fsSL https://raw.githubusercontent.com/skuroki/dotfiles2/master/install2.sh | bash -x'
echo 'を実行してください'
