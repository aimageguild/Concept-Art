cd _includes
./upload.bat
cd ../

cd _layouts
./upload.bat
cd ../

cd assets
./upload.bat
cd ../

git config --local user.name "AIMageGuild"
git config --local user.email "AIMageGuild@users.noreply.github.com"
git remote set-url origin git@AI:aimageguild/Concept-Art.git

git submodule update --recursive --remote

git pull
git add .
git commit -m "upload"
git push
