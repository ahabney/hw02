% Author: Alexis Abney / aha0013@auburn.edu
% Date: 2024-09-01
% Assignment Name: hw02

classdef hw02
    methods (Static)

        function [c, n] = p1(f, a, b, epsilon, name, f_prime)
            % p1: Implement numerical methods to find the root of a function
            % :param f: function handle
            % :param a: real number, the left end of the interval
            % :param b: real number, the right end of the interval
            % :param epsilon: real number, the function tolerance
            % :param name: string, the name of the method
            % :param f_prime: function handle, the derivative of the function, only needed for Newton's method
            %
            % :return: 
            % c: real number, the root of the function
            % n: integer, the number of iterations
            if strcmp(name, 'bisection')
                n = 0;
                c = (a + b) / 2;
                while abs(f(c)) > epsilon
                    if f(a) * f(c) < 0
                        b = c;
                    else
                        a = c;
                    end
                    c = (a + b) / 2;
                    n = n + 1;
                end
            elseif strcmp(name, 'secant') % secant method
                n = 0;
                c_old = a;
                c = b;
                while abs(f(c)) > epsilon
                  c_new = c - f(c) * (c - c_old) / (f(c) - f(c_old));
                  c_old = c;
                  c = c_new;
                  n = n + 1;
                end   
               c = inf; 
            elseif strcmp(name, 'newton') % Newton's method
                % Write your code here
                n = 0;
                c = a;
                while abs(f(c)) > epsilon
                    c = c - f(c) / f_prime(c);
                    n = n+1;
                end 
                c = inf;

            elseif strcmp(name, 'regula_falsi') % false position method
                % Write your code here
                n = 0;
                c = (a * f(b) - b * f(a)) / (f(b) - f(a)); 
                while abs(f(c)) > epsilon
                    if f(a) * f(C) < 0
                        b = c; 
                    else 
                        a = c;
                    end 
                    c = (a * f(b) - b * f(a)) / (f(b) - f(a)); 
                    n = n + 1; 
                end 
                c = inf;
            elseif strcmp(name, 'steffensen') % Steffensen's method
                % Write your code here
                n = 0;
                c = a;
        while abs(f(c)) > epsilon
            c_new = c - f(c) / (f(c + f(c)) - f(c));
            c = c_new;
            n = n + 1;
        end
            else 
                error('Unknown method: %s', name); 
                c = inf;
            end
        end

        function p2()
            
        %     summarize the iteration number for each method name in the table
        
        %     |name          | iter | 
        %     |--------------|------|
        %     |bisection     |  11  |
        %     |secant        |   5  |
        %     |newton        |   5  |
        %     |regula_falsi  |   7  |
        %     |steffensen    |   8  |
            
        end

        function [c, n] = p3(f, a, b, epsilon)
            % For 6630 only

            % Implement the Illinois method to find the root of a function

            % :param f: function handle
            % :param a: real number, the left end of the interval
            % :param b: real number, the right end of the interval
            % :param epsilon: real number, the function tolerance

            % :return:
            % c: real number, the root of the function
            % n: integer, the number of iterations

            % Write your code here
            c = inf;
            n = inf;
        end

        function [c, n] = p4(f, a, b, epsilon)
            % For 6630 only

            % Implement the Pegasus method to find the root of a function

            % :param f: function handle
            % :param a: real number, the left end of the interval
            % :param b: real number, the right end of the interval
            % :param epsilon: real number, the function tolerance

            % :return:
            % c: real number, the root of the function
            % n: integer, the number of iterations

            % Write your code here
            c = inf;
            n = inf;
        end
    end
end