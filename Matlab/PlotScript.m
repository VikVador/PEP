%-------------------------
%  A ADAPTER EN FONCTION
% (plus utile que script)
%-------------------------
%%
clear all

% leaf surface
S = 5e-4;  %[m^2]

% water density
rho = 1e6; %[g/m^3]

%% 1st

% time1 = [57936.009,57937.236,57938.457,57939.685,57940.898,57942.093,57943.272,57944.485,57945.708,57946.927,57948.12,57949.335,57950.564,57951.792,57952.999,57954.188,57955.364,57956.544,57957.768,57958.994,57960.214,57961.39,57962.618,57963.846,57965.074,57966.286,57967.516,57968.735,57969.962,57971.135,57972.286,57973.498,57974.721,57975.903,57977.131,57978.347,57979.578,57980.794,57982.022,57983.236,57984.465,57985.69,57986.917,57988.098,57989.263,57990.488,57991.718,57992.95,57994.161,57995.386,57996.615,57997.842,57999.052,58000.282,58001.465,58002.648,58003.866,58005.096,58006.309,58007.535,58008.712,58009.94,58011.165,58012.379,58013.56,58014.783,58015.957,58017.103,58018.241,58019.364,58020.507,58021.698,58022.909,58024.093,58025.324,58026.533,58027.729,58028.938,58030.119,58031.344,58032.525,58033.748,58034.933,58036.163,58037.378,58038.599,58039.825,58041.037,58042.265,58043.443,58044.67,58045.897,58047.12,58048.349,58049.561,58050.787,58052.013,58053.241,58054.453,58055.678,58056.911,58058.126,58059.351,58060.578,58061.757,58062.942,58064.218,58065.429,58066.652,58067.882,58069.098,58070.322,58071.548,58072.763,58073.981,58075.209,58076.394,58077.618,58078.845,58080.057,0.2111];
% time1 = time1 - ones(size(time1)) * time1(1);
% m1 = [0.2111,0.2111,0.2111,0.2111,0.2111,0.2111,0.2111,0.2111,0.2111,...
%     0.2111,0.2111,0.2111,0.2111,0.2111,0.2111,0.2111,0.2111,0.2111,...
%     0.2111,0.2111,0.2111,0.2194,0.2211,0.2211,0.2211,0.2374,0.2376,...
%     0.2068,0.2498,0.2505,0.2505,0.2505,0.2574,0.2705,0.2706,0.2706,...
%     0.2826,0.2831,0.2831,0.2956,0.2971,0.2972,0.2741,0.3114,0.3116,...
%     0.3064,0.3214,0.3209,0.3296,0.3239,0.3365,0.3367,0.2696,0.2651,...
%     0.2806,0.2811,0.2811,0.2891,0.2923,0.2921,0.2648,0.3070,0.3077,...
%     0.2720,0.3192,0.3194,0.3194,0.3317,0.3327,0.3328,0.3327,0.3083,...
%     0.3507,0.3511,0.3511,0.3539,0.3684,0.3688,0.3500,0.3787,0.3789,...
%     0.3759,0.3925,0.3943,0.3944,0.3704,0.4080,0.4084,0.3896,0.4215,...
%     0.4223,0.4077,0.4330,0.4332,0.4018,0.4157,0.4160,0.4040,0.4258,...
%     0.4260,0.4260,0.4405,0.3090,0.3071,0.3074,0.3075,0.3075,0.3075,...
%     0.3070,0.3071,0.3071,0.3071,0.3071,0.3071,0.3071,0.3071,0.3071,...
%     0.3072,0.3073,0.3073];
% m1 = m1 - ones(size(m1)) * m1(1);
%
% if length(m1) > length(time1)   
%     m1([length(time1) + 1 : 1 : length(m1)]) = [];
% elseif length(m1) < length(time1)
%     time1([length(m1) + 1 : 1 : length(time1)]) = [];
% end
% 
% while ~issorted(m1)
%     k = 1;
%     for i = 1 : length(m1) - 1
%        if m1(i + 1) < m1(i)
%            index(k) = i + 1;
%            k = k + 1;
%        end
%     end
%     m1(index) = [];
%     time1(index) = [];
%     clear index;
% end

%% 2nd

time2 = [58434.619,58435.833,58437.057,58438.233,58439.428,58440.641,58441.868,58443.1,58444.309,58445.535,58446.754,58447.948,58449.161,58450.391,58451.622,58452.835,58454.059,58455.279,58456.508,58457.736,58458.996,58460.218,58461.448,58462.662,58463.891,58465.12,58466.296,58467.513,58468.735,58469.965,58471.192,58472.403,58473.582,58474.803,58475.982,58477.214,58478.44,58479.576,58480.805,58482.029,58483.245,58484.466,58485.689,58486.918,58488.144,58489.356,58490.585,58491.815,58493.028,58494.247,58495.438,58496.65,58497.876,58499.101,58500.331,58501.556,58502.765,58503.945,58505.173,58506.356,58507.538,58508.764,58509.978,58511.209,58512.42,58513.606,58514.833,58516.062,58517.275,58518.502,58519.684,58520.818,58521.949,58523.176,58524.357,58525.585];

% sets the time origin at zero
time2 = time2 - ones(size(time2)) * time2(1);

m2 = [0.2120,0.2120,0.2120,0.2119,0.2119,0.1949,0.2199,0.2203,0.2203,...
    0.2202,0.2128,0.2326,0.2328,0.2383,0.2446,0.2443,0.2223,0.2605,...
    0.2607,0.2690,0.2697,0.2759,0.2760,0.2851,0.2870,0.2871,0.2976,...
    0.2985,0.2986,0.3093,0.3104,0.2781,0.3228,0.3232,0.3232,0.3361,...
    0.3369,0.3011,0.3461,0.3461,0.3416,0.3579,0.3580,0.3465,0.3706,...
    0.3705,0.3776,0.3774,0.3843,0.3895,0.3917,0.3819,0.3992,0.4001,...
    0.3810,0.4109,0.4113,0.4204,0.4248,0.4249,0.4225,0.4324,0.4328,...
    0.3856,0.3960,0.3961,0.3674,0.4073,0.3795,0.4173,0.3340,0.3285,...
    0.3277,0.3276,0.3277,0.3277]; % [g]

% makes the mass and the time vector the same length
if length(m2) > length(time2)   
    m2([length(time2) + 1 : 1 : length(m2)]) = [];
elseif length(m2) < length(time2)
    time2([length(m2) + 1 : 1 : length(time2)]) = [];
end

% deletes the decreasing values of the mass
while ~issorted(m2)
    k = 1;
    for i = 1 : length(m2) - 1
       if m2(i + 1) < m2(i)
           index(k) = i + 1;
           k = k + 1;
       end
    end
    m2(index) = [];
    time2(index) = [];
    clear index;
end


%% 3rd

time3 = [59040.403,59041.527,59042.707,59043.934,59045.154,59046.379,59047.607,59048.831,59050.059,59051.272,59052.499,59053.725,59054.908,59056.123,59057.306,59058.535,59059.749,59060.933,59062.156,59063.376,59064.6,59065.831,59067.046,59068.277,59069.458,59070.669,59071.848,59073.077,59074.307,59075.517,59076.709,59077.924,59079.151,59080.376,59081.601,59082.786,59084.002,59085.22,59086.403,59087.631,59088.86,59090.07,59091.294,59092.521,59093.748,59094.976,59096.19,59097.321,59098.502,59099.725,59100.954,59102.181,59103.361,59104.582,59105.812,59107.024,59108.253,59109.482,59110.693,59111.87,59113.097,59114.319,59115.505,59116.731,59117.948,59119.176,59120.406,59121.615,59122.84,59124.021,59125.248,59126.474,59127.653,59128.866];

% sets the time origin at zero
time3 = time3 - ones(size(time3)) * time3(1);

m3 = [0.2115,0.2115,0.2115,0.2115,0.2115,0.2115,0.2115,0.2115,0.2115,...
    0.2115,0.2115,0.2115,0.1881,0.2188,0.1894,0.1901,0.2326,0.2339,...
    0.2035,0.2395,0.2477,0.2166,0.2572,0.2599,0.2324,0.2602,0.2755,...
    0.2756,0.2440,0.2626,0.2909,0.2911,0.2570,0.2981,0.3065,0.2758,...
    0.2968,0.3200,0.3204,0.2931,0.2950,0.3321,0.3403,0.3403,0.3127,...
    0.3549,0.3550,0.3550,0.3251,0.3402,0.3739,0.3743,0.3743,0.3492,...
    0.3860,0.3941,0.3939,0.3939,0.3938,0.3752,0.4091,0.4189,0.4190,...
    0.4190,0.4190,0.4190,0.4190,0.4190,0.4190,0.4476,0.4510,0.4509,...
    0.4509,0.4509,0.4509,0.4156,0.4106,0.4106,0.4106,0.3769,0.4266,...
    0.4268,0.4268,0.4268,0.4268,0.4291,0.3943,0.3942,0.3936,0.4085,...
    0.2901,0.2996,0.2997,0.2997,0.2997,0.2997,0.2997,0.2997,0.2997,...
    0.2997,0.2997,0.3001,0.3001]; % [g]

% makes the mass and the time vector the same length
if length(m3) > length(time3)   
    m3([length(time3) + 1 : 1 : length(m3)]) = [];
elseif length(m3) < length(time3)
    time3([length(m3) + 1 : 1 : length(time3)]) = [];
end

% deletes the decreasing values of the mass
while ~issorted(m3)
    k = 1;
    for i = 1 : length(m3) - 1
       if m3(i + 1) < m3(i)
           index(k) = i + 1;
           k = k + 1;
       end
    end
    m3(index) = [];
    time3(index) = [];
    clear index;
end


%% 4th

time4 = [0,1.12400000000343,2.30400000000373,3.53100000000268,4.75100000000384,5.97600000000239,7.20400000000518,8.42799999999988,9.65600000000268,10.8689999999988,12.0960000000050,13.3220000000001,14.5050000000047,15.7200000000012,16.9029999999984,18.1320000000051,19.3460000000050,20.5299999999988,21.7530000000043,22.9729999999981,24.1970000000001,25.4279999999999,26.6430000000037,27.8740000000034,29.0550000000003,30.2660000000033,31.4449999999997,32.6739999999991,33.9040000000023,35.1140000000014,36.3060000000041,37.5210000000006,38.7479999999996,39.9729999999981,41.1980000000040,42.3830000000016,43.5990000000020,44.8170000000027,46,47.2280000000028,48.4570000000022,49.6670000000013,50.8910000000033,52.1180000000022,53.3450000000012,54.5730000000040,55.7870000000039,56.9180000000051,58.0990000000020,59.3220000000001,60.5509999999995,61.7779999999984,62.9579999999987,64.1790000000037,65.4089999999997,66.6209999999992,67.8499999999985,69.0790000000052,70.2900000000009,71.4670000000042,72.6940000000031,73.9160000000047,75.1019999999990,76.3280000000013,77.5449999999983,78.7730000000011,80.0030000000043,81.2119999999995,82.4369999999981,83.6180000000022,84.8450000000012,86.0710000000036,87.2500000000000];

m4 = [0.2128,0.2128,0.2128,0.2128,0.2128,0.2128,0.2128,0.2128,0.1858,...
      0.2184,0.2188,0.2189,0.1901,0.2338,0.2340,0.2218,0.2378,0.2499,...
      0.2502,0.2211,0.2525,0.2645,0.2646,0.2646,0.2646,0.2815,0.2819,...
      0.2819,0.2495,0.3006,0.3017,0.3018,0.2765,0.3173,0.3206,0.3206,...
      0.2974,0.3002,0.3382,0.3385,0.3386,0.3221,0.3559,0.3563,0.3564,...
      0.3383,0.3660,0.3734,0.3739,0.3553,0.3864,0.3889,0.3890,0.3520,...
      0.4036,0.4043,0.4043,0.3808,0.4206,0.4220,0.4221,0.4221,0.3987,...
      0.4403,0.4422,0.4422,0.3923,0.3437,0.3433,0.3398,0.3516,0.3521,0.3524];

 % makes the mass and the time vector the same length
if length(m4) > length(time4)   
    m4([length(time4) + 1 : 1 : length(m4)]) = [];
elseif length(m4) < length(time4)
    time4([length(m4) + 1 : 1 : length(time4)]) = [];
end

% deletes the decreasing values of the mass
while ~issorted(m4)
    k = 1;
    for i = 1 : length(m4) - 1
       if m4(i + 1) < m4(i)
           index(k) = i + 1;
           k = k + 1;
       end
    end
    m4(index) = [];
    time4(index) = [];
    clear index;
end


%% Plots
figure;
% plot(time1, 1000 * (m1 - ones(size(m1)) * m1(1))/(rho * S), 'v', 'linewidth', 1.5);
% hold on;
plot(time2, 1000 * (m2 - ones(size(m2)) * m2(1))/(rho * S), 'v', 'linewidth', 1.5);
hold on;
plot(time3, 1000 * (m3 - ones(size(m3)) * m3(1))/(rho * S), 'v', 'linewidth', 1.5);
hold on;
plot(time4, 1000 * (m4 - ones(size(m4)) * m4(1))/(rho * S), 'v', 'linewidth', 1.5);

xlim([0 max([time2(end) time3(end) time4(end)])]);
grid on;
ylabel('$\mu$ [mm]', 'Fontsize', 16, 'interpreter', 'latex');
xlabel('$t$ [s]', 'Fontsize', 16, 'interpreter', 'latex');
set(gca,'Fontsize', 12);

%%
% T = table(time, R, 'VariableNames', {'time', 'mass'});
% writetable(T, 'first');