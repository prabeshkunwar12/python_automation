if grep "127\.0\.0\.1" /etc/hosts; then 
    echo "localhost is configured correctly"
else
    echo "localhost is not configured correctly"
fi