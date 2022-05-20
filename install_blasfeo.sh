git clone https://github.com/giaf/blasfeo
cd blasfeo 
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -DBLASFEO_EXAMPLES=OFF 
make -j4
sudo make install -j
cd ../..
rm -rf blasfeo
echo export LD_LIBRARY_PATH=/opt/blasfeo/lib:$LD_LIBRARY_PATH >> ~/.bashrc
source ~/.bashrc