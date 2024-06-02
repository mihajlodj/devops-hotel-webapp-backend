#!bin/bash
cd uService-lodging && git checkout develop && git pull
sync
cd ../uService-notification && git checkout develop && git pull
sync
cd ../uService-rating && git checkout develop && git pull
sync
cd ../uService-reservation && git checkout develop && git pull
sync
cd ../uService-user && git checkout develop && git pull
echo "Done!"
