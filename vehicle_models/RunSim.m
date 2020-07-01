%% Set up simulation
chassis = chassis_params;
sys = 'autorc_3dof';    % block diagram name
t_sim = 60;             % Sim runtime

%% Simulate
sim(sys);

%% 2D top down

X_cg = yout{6}.Values;
Y_cg = yout{7}.Values;

figure;
% Vehicle path
    plot(X_cg.Data,Y_cg.Data,'b');
    hold on
    xlabel('X displacement, CG [m]')
    ylabel('Y displacement, CG [m]')
    grid on
    grid minor
    line(xlim,[0 0],'Color','black','LineStyle','--')
    line([0 0],ylim,'Color','black','LineStyle','--')
    axis equal
