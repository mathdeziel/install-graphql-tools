mkdir graphql-tools;
cd graphql-tools;

clear;

echo "\n\n>>> Installing Git...";
sudo apt install git -y;

echo "\n\n>>> Installing Altair...";
wget https://github.com/altair-graphql/altair/releases/download/v5.0.28/altair_5.0.28_x86_64_linux.AppImage;
chmod u+x altair_5.0.28_x86_64_linux.AppImage

echo "\n\n>>> Installing Clairvoyance...";
git clone https://github.com/nikitastupin/clairvoyance.git;

echo "\n\n>>> Installing InQL...";
wget https://github.com/doyensec/inql/archive/refs/tags/v4.0.7.zip;
unzip v4.0.7.zip && rm v4.0.7.zip;
cd inql-4.0.7;
sudo python3 setup.py install;
cd ..;

echo "\n\n>>> Installing Graphw00f...";
git clone https://github.com/dolevf/graphw00f.git;

echo "\n\n>>> Installing BatchQL...";
git clone https://github.com/assetnote/batchql.git;

echo "\n\n>>> Installing Nmap & Scripts...";
sudo apt install nmap -y;
git clone https://github.com/dolevf/nmap-graphql-introspection-nse.git;
sudo cp nmap-graphql-introspection-nse/graphql-introspection.nse /usr/share/nmap/scripts;

echo "\n\n>>> Installing Commix...";
sudo apt install commix -y;

echo "\n\n>>> Installing graphql-path-enum...";
wget "https://gitlab.com/dee-see/graphql-path-enum/-/jobs/artifacts/v1.1/raw/target/release/graphql-path-enum?job=build-linux" -O graphql-path-enum;
chmod u+x graphql-path-enum;

echo "\n\n>>> Installing EyeWitness...";
sudo apt install eyewitness -y;

echo "\n\n>>> Installing GraphQL Cop...";
sudo apt install python3-pip -y;
git clone https://github.com/dolevf/graphql-cop.git;
cd graphql-cop;
pip3 install -r requirements.txt;
cd ..;

echo "\n\n>>> Installing CrackQL...";
git clone https://github.com/nicholasaleks/CrackQL.git;
cd CrackQL;
pip3 install -r requirements.txt;

echo "\n\n>>> DONE!";
