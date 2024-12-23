function interpolated_vals = Newton_Interpolation(data, eval_points)
% NEWTON_INTERPOLATION Computes Newton interpolation
% INPUT:
% - data: A matrix of points [t1, y1; t2, y2; ...; tn, yn]
% - eval_points: Points where the interpolation is evaluated
% OUTPUT:
% - interpolated_vals: Interpolated values at eval_points

    % Extract x (t values) and y (function values)
    x = data(:, 1);
    y = data(:, 2);

    % normalize the data points between [-1, 1]
    x_min = min(x);
    x_max = max(x);
    x_normed = normalizePoints(x, x_min, x_max);
    eval_points_normed = normalizePoints(eval_points, x_min, x_max);

    % Number of data points
    n = length(x);
    n_eval = size(eval_points);

    % Compute divided difference table
    div_diff = y;
    for j = 2:n
        div_diff(j:n) = (div_diff(j:n) - div_diff(j-1:n-1)) ./ (x_normed(j:n) - x_normed(1:n-j+1));
    end

    % Evaluate Newton polynomial at eval_points
    interpolated_vals = zeros(size(eval_points));
    for k = 1:length(eval_points)
        % Evaluate polynomial for each evaluation point
        term = 1; % Start with the first basis function
        interpolated_vals(k) = div_diff(1); % Start with the first coefficient
        for j = 2:n
            term = term * (eval_points_normed(k) - x_normed(j-1));
            interpolated_vals(k) = interpolated_vals(k) + div_diff(j) * term;
        end
    end
end

