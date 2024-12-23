% Interpolating the Real World Data Set 


% The primary data set has been split up into device models. The first
% % question we are looking to answer is: Is battery affected by 
% screen on time more from device to device
function a = ScreenvBattery()
% Display the Screen On Time (in hours/day) with relation to Battery Drain 
% (in mAh/day) for each device model in the data set
    w = readmatrix('datasets/device_model/screen_on_time/Google_Pixel_5.csv'); 
    x = w(:,4); % screen on time
    y = w(:,5); % battery drain
    eval_inputs = linspace(min(x), max(x));
    plot_methods(x, y, x, 'Google Pixel 5 Screen on Time v Battery');
    disp('google pixel data:')
    disp(w)

    w1 = readmatrix('datasets/device_model/screen_on_time/iPhone_12.csv'); 
    x1 = w1(:,4);
    y1 = w1(:,5);
    eval_inputs1 = linspace(min(x1), max(x1));
    plot_methods(x1, y1, x1, 'iPhone 12 Screen on Time v Battery');
    disp('Iphone data:' );
    disp(w1)

    w2 = readmatrix('datasets/device_model/screen_on_time/OnePlus_9.csv'); 
    x2 = w2(:,4);
    y2 = w2(:,5);
    eval_inputs2 = linspace(min(x2), max(x2));
    plot_methods(x2, y2, x2, 'One Plus 9 Screen on Time v Battery');
    disp('One Plus 9 data:' );
    disp(w2)

    w3 = readmatrix('datasets/device_model/screen_on_time/Samsung_Galaxy_S21.csv'); 
    x3 = w3(:,4);
    y3 = w3(:,5);
    eval_inputs3 = linspace(min(x3), max(x3));
    plot_methods(x3, y3, x3, 'Samsung Galaxy 21 Screen on Time v Battery');
    disp('Samsung Galaxy data:' );
    disp(w3)

    w4 = readmatrix('datasets/device_model/screen_on_time/Xiaomi_Mi_11.csv'); 
    x4 = w4(:,4);
    y4 = w4(:,5);
    eval_inputs4 = linspace(min(x4), max(x4));
    plot_methods(x4, y4, x4, 'Xiaomi Screen on Time v Battery');
    disp('Xiaomi data:' );
    disp(w4)
end

function b = AppUsagevBattery()
% Display the App Usage (in minutes/day) with relation to Battery Drain 
% (in mAh/day) for each device model in the data set
    w = readmatrix('datasets/device_model/app_usage_time/Google_Pixel_5.csv'); 
    x = w(:,3); % app usage
    y = w(:,5); % battery drain 
    eval_inputs = linspace(min(x), max(x));
    plot_methods(x, y, x, 'Google Pixel 5 App Usage Time v Battery');
    disp('google pixel data:')
    disp(w)

    w1 = readmatrix('datasets/device_model/app_usage_time/iPhone_12.csv'); 
    x1 = w1(:,3);
    y1 = w1(:,5);
    eval_inputs1 = linspace(min(x1), max(x1));
    plot_methods(x1, y1, x1, 'iPhone 12 App Usage Time v Battery');
    disp('Iphone data:' );
    disp(w1)

    w2 = readmatrix('datasets/device_model/app_usage_time/OnePlus_9.csv'); 
    x2 = w2(:,3);
    y2 = w2(:,5);
    eval_inputs2 = linspace(min(x2), max(x2));
    plot_methods(x2, y2, x2, 'One Plus 9 App Usage Time v Battery');
    disp('One Plus 9 data:' );
    disp(w2)

    w3 = readmatrix('datasets/device_model/app_usage_time/Samsung_Galaxy_S21.csv'); 
    x3 = w3(:,3);
    y3 = w3(:,5);
    eval_inputs3 = linspace(min(x3), max(x3));
    plot_methods(x3, y3, x3, 'Samsung Galaxy 21 App Usage Time v Battery');
    disp('Samsung Galaxy data:' );
    disp(w3)

    w4 = readmatrix('datasets/device_model/app_usage_time/Xiaomi_Mi_11.csv'); 
    x4 = w4(:,3);
    y4 = w4(:,5);
    eval_inputs4 = linspace(min(x4), max(x4));
    plot_methods(x4, y4, x4, 'Xiaomi App Usage Time v Battery');
    disp('Xiaomi data:' );
    disp(w4)
end

ScreenvBattery()
AppUsagevBattery()
