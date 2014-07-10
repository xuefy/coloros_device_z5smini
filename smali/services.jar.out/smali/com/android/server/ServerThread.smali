.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1074
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1075
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1078
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1079
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 96
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    return-void
.end method

.method public run()V
    .locals 156
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "Jun.Zhang@Plf.Framework, to use oppo button light, three pointers move shot screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 102
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 105
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 107
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 110
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 111
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 115
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v128

    .line 117
    .local v128, shutdownAction:Ljava/lang/String;
    if-eqz v128, :cond_0

    invoke-virtual/range {v128 .. v128}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 118
    const/4 v7, 0x0

    move-object/from16 v0, v128

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_11

    const/16 v120, 0x1

    .line 121
    .local v120, reboot:Z
    :goto_0
    invoke-virtual/range {v128 .. v128}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_12

    .line 122
    const/4 v7, 0x1

    invoke-virtual/range {v128 .. v128}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v128

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v119

    .line 127
    .local v119, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v120

    move-object/from16 v1, v119

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 131
    .end local v119           #reason:Ljava/lang/String;
    .end local v120           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v90

    .line 132
    .local v90, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v90

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/16 v89, 0x0

    .line 134
    .local v89, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 136
    .local v33, headless:Z
    const/16 v95, 0x0

    .line 137
    .local v95, installer:Lcom/android/server/pm/Installer;
    const/16 v61, 0x0

    .line 138
    .local v61, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v77, 0x0

    .line 139
    .local v77, contentService:Landroid/content/ContentService;
    const/16 v97, 0x0

    .line 140
    .local v97, lights:Lcom/android/server/LightsService;
    const/16 v114, 0x0

    .line 141
    .local v114, power:Lcom/android/server/power/PowerManagerService;
    const/16 v83, 0x0

    .line 142
    .local v83, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v67, 0x0

    .line 143
    .local v67, battery:Lcom/android/server/BatteryService;
    const/16 v145, 0x0

    .line 144
    .local v145, vibrator:Lcom/android/server/VibratorService;
    const/16 v63, 0x0

    .line 145
    .local v63, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v103, 0x0

    .line 146
    .local v103, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 147
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 148
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v107, 0x0

    .line 149
    .local v107, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v75, 0x0

    .line 150
    .local v75, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v115, 0x0

    .line 151
    .local v115, qcCon:Ljava/lang/Object;
    const/16 v152, 0x0

    .line 152
    .local v152, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v150, 0x0

    .line 153
    .local v150, wifi:Lcom/android/server/WifiService;
    const/16 v127, 0x0

    .line 154
    .local v127, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v113, 0x0

    .line 155
    .local v113, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 156
    .local v5, context:Landroid/content/Context;
    const/16 v154, 0x0

    .line 157
    .local v154, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v68, 0x0

    .line 158
    .local v68, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v84, 0x0

    .line 159
    .local v84, dock:Lcom/android/server/DockObserver;
    const/16 v123, 0x0

    .line 160
    .local v123, regulatory:Lcom/android/server/RegulatoryObserver;
    const/16 v142, 0x0

    .line 161
    .local v142, usb:Lcom/android/server/usb/UsbService;
    const/16 v125, 0x0

    .line 162
    .local v125, serial:Lcom/android/server/SerialService;
    const/16 v137, 0x0

    .line 163
    .local v137, twilight:Lcom/android/server/TwilightService;
    const/16 v140, 0x0

    .line 164
    .local v140, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v121, 0x0

    .line 165
    .local v121, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v133, 0x0

    .line 166
    .local v133, throttle:Lcom/android/server/ThrottleService;
    const/16 v109, 0x0

    .line 167
    .local v109, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v72, 0x0

    .line 168
    .local v72, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v94, 0x0

    .line 169
    .local v94, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v131, 0x0

    .line 170
    .local v131, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v105, 0x0

    .line 172
    .local v105, msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    const/16 v70, 0x0

    .line 179
    .local v70, breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    new-instance v139, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v139

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 180
    .local v139, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v139 .. v139}, Landroid/os/HandlerThread;->start()V

    .line 181
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v139 .. v139}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 182
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    new-instance v155, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v155

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 200
    .local v155, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v155 .. v155}, Landroid/os/HandlerThread;->start()V

    .line 201
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v155 .. v155}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 202
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    const/16 v24, 0x0

    .line 224
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v96, Lcom/android/server/pm/Installer;

    invoke-direct/range {v96 .. v96}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4f

    .line 226
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .local v96, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v96 .. v96}, Lcom/android/server/pm/Installer;->ping()Z

    .line 228
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 231
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_50

    .line 233
    .end local v114           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 235
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static/range {v89 .. v89}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 238
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_51

    .line 240
    .end local v83           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_3
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 242
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v132, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v132

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_52

    .line 244
    .end local v131           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v132, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_4
    const-string v7, "telephony.registry"

    move-object/from16 v0, v132

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 246
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 247
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v106, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v106

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 249
    .end local v105           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .local v106, msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v106

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_53

    move-object/from16 v105, v106

    .line 252
    .end local v106           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v105       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :cond_1
    :try_start_6
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v7, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 256
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 258
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    .line 259
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 266
    .local v80, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v80

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 267
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/16 v24, 0x1

    .line 274
    :cond_3
    :goto_3
    if-eqz v89, :cond_15

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, v96

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v113

    .line 277
    const/16 v91, 0x0

    .line 279
    .local v91, firstBoot:Z
    :try_start_7
    invoke-interface/range {v113 .. v113}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v91

    .line 283
    :goto_5
    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 285
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 290
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 294
    :try_start_9
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v62, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v62

    invoke-direct {v0, v5}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 296
    .end local v61           #accountManager:Landroid/accounts/AccountManagerService;
    .local v62, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_a
    const-string v7, "account"

    move-object/from16 v0, v62

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5b
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_54

    move-object/from16 v61, v62

    .line 301
    .end local v62           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v61       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_6
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v7, 0x1

    move/from16 v0, v89

    if-ne v0, v7, :cond_16

    const/4 v7, 0x1

    :goto_7
    invoke-static {v5, v7}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v77

    .line 305
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 309
    const-string v7, "SystemServer"

    const-string v9, "breathinglight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v71, Landroid/os/nubia/breathlight/BreathinglightService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Landroid/os/nubia/breathlight/BreathinglightService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    .line 311
    .end local v70           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .local v71, breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    :try_start_c
    const-string v7, "breathinglight"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/OppoLightsService;

    invoke-direct {v6, v5}, Lcom/android/server/OppoLightsService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_55

    .end local v97           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_56

    .line 318
    .end local v67           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_e
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 320
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v146, Lcom/android/server/OppoVibratorService;

    move-object/from16 v0, v146

    invoke-direct {v0, v5}, Lcom/android/server/OppoVibratorService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_57

    .line 322
    .end local v145           #vibrator:Lcom/android/server/VibratorService;
    .local v146, vibrator:Lcom/android/server/VibratorService;
    :try_start_f
    const-string v7, "vibrator"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 326
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 329
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_58

    .line 331
    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_10
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 333
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 337
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_59

    .line 340
    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v7, 0x1

    move/from16 v0, v89

    if-eq v0, v7, :cond_17

    const/16 v22, 0x1

    :goto_8
    if-nez v91, :cond_18

    const/16 v23, 0x1

    :goto_9
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v154

    .line 345
    const-string v7, "window"

    move-object/from16 v0, v154

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 346
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 348
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v154

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 350
    invoke-virtual/range {v154 .. v154}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 351
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 353
    move-object/from16 v0, v154

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 354
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 359
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 360
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2

    :goto_a
    move-object/from16 v70, v71

    .end local v71           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v70       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    move-object/from16 v131, v132

    .end local v132           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v145, v146

    .end local v146           #vibrator:Lcom/android/server/VibratorService;
    .restart local v145       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v95, v96

    .line 374
    .end local v80           #cryptState:Ljava/lang/String;
    .end local v91           #firstBoot:Z
    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    :goto_b
    const/16 v81, 0x0

    .line 375
    .local v81, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v129, 0x0

    .line 376
    .local v129, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v92, 0x0

    .line 377
    .local v92, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v64, 0x0

    .line 378
    .local v64, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v111, 0x0

    .line 379
    .local v111, notification:Lcom/android/server/NotificationManagerService;
    const/16 v148, 0x0

    .line 380
    .local v148, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v98, 0x0

    .line 381
    .local v98, location:Lcom/android/server/LocationManagerService;
    const/16 v78, 0x0

    .line 382
    .local v78, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v135, 0x0

    .line 383
    .local v135, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v100, 0x0

    .line 384
    .local v100, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v86, 0x0

    .line 387
    .local v86, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/4 v7, 0x1

    move/from16 v0, v89

    if-eq v0, v7, :cond_4

    .line 389
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v93, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v93

    move-object/from16 v1, v154

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3

    .line 391
    .end local v92           #imm:Lcom/android/server/InputMethodManagerService;
    .local v93, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_13
    const-string v7, "input_method"

    move-object/from16 v0, v93

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4e

    move-object/from16 v92, v93

    .line 397
    .end local v93           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v92       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_14
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4

    .line 406
    :cond_4
    :goto_d
    :try_start_15
    invoke-virtual/range {v154 .. v154}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_5

    .line 412
    :goto_e
    :try_start_16
    invoke-interface/range {v113 .. v113}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    .line 418
    :goto_f
    :try_start_17
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10403f3

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_4d

    .line 425
    :goto_10
    const/4 v7, 0x1

    move/from16 v0, v89

    if-eq v0, v7, :cond_1d

    .line 426
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 432
    :try_start_18
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v104, Lcom/android/server/MountService;

    move-object/from16 v0, v104

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_7

    .line 434
    .end local v103           #mountService:Lcom/android/server/MountService;
    .local v104, mountService:Lcom/android/server/MountService;
    :try_start_19
    const-string v7, "mount"

    move-object/from16 v0, v104

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_4c

    move-object/from16 v103, v104

    .line 441
    .end local v104           #mountService:Lcom/android/server/MountService;
    .restart local v103       #mountService:Lcom/android/server/MountService;
    :cond_5
    :goto_11
    :try_start_1a
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v101, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v101

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_8

    .line 443
    .end local v100           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v101, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_1b
    const-string v7, "lock_settings"

    move-object/from16 v0, v101

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_4b

    move-object/from16 v100, v101

    .line 449
    .end local v101           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v100       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_12
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v82, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v82

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_9

    .line 451
    .end local v81           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v82, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1d
    const-string v7, "device_policy"

    move-object/from16 v0, v82

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_4a

    move-object/from16 v81, v82

    .line 457
    .end local v82           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v81       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_13
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v130, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v130

    move-object/from16 v1, v154

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_a

    .line 459
    .end local v129           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v130, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1f
    const-string v7, "statusbar"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_49

    move-object/from16 v129, v130

    .line 465
    .end local v130           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v129       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_b

    .line 473
    :goto_15
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 475
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_c

    .line 481
    :goto_16
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v136, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v136

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_d

    .line 483
    .end local v135           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v136, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_23
    const-string v7, "textservices"

    move-object/from16 v0, v136

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_48

    move-object/from16 v135, v136

    .line 489
    .end local v136           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v135       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_24
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v108, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v108

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_e

    .line 491
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v108, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_25
    const-string v7, "netstats"

    move-object/from16 v0, v108

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_47

    move-object/from16 v29, v108

    .line 497
    .end local v108           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_f

    .line 501
    .end local v107           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_27
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_46

    .line 507
    :goto_19
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "Regulatory Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v124, Lcom/android/server/RegulatoryObserver;

    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/android/server/RegulatoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_10

    .end local v123           #regulatory:Lcom/android/server/RegulatoryObserver;
    .local v124, regulatory:Lcom/android/server/RegulatoryObserver;
    move-object/from16 v123, v124

    .line 515
    .end local v124           #regulatory:Lcom/android/server/RegulatoryObserver;
    .restart local v123       #regulatory:Lcom/android/server/RegulatoryObserver;
    :goto_1a
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v153, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v153

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_11

    .line 517
    .end local v152           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v153, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2a
    const-string v7, "wifip2p"

    move-object/from16 v0, v153

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_45

    move-object/from16 v152, v153

    .line 523
    .end local v153           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v152       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v151, Lcom/android/server/WifiService;

    move-object/from16 v0, v151

    invoke-direct {v0, v5}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_12

    .line 525
    .end local v150           #wifi:Lcom/android/server/WifiService;
    .local v151, wifi:Lcom/android/server/WifiService;
    :try_start_2c
    const-string v7, "wifi"

    move-object/from16 v0, v151

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_44

    move-object/from16 v150, v151

    .line 531
    .end local v151           #wifi:Lcom/android/server/WifiService;
    .restart local v150       #wifi:Lcom/android/server/WifiService;
    :goto_1c
    :try_start_2d
    const-string v7, "persist.cne.feature"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v144

    .line 532
    .local v144, value:I
    if-lez v144, :cond_1b

    const/4 v7, 0x7

    move/from16 v0, v144

    if-ge v0, v7, :cond_1b

    .line 533
    const-string v7, "SystemServer"

    const-string v9, "QcConnectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v117, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/services-ext.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v117

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 537
    .local v117, qcsClassLoader:Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.QcConnectivityService"

    move-object/from16 v0, v117

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v116

    .line 539
    .local v116, qcsClass:Ljava/lang/Class;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    const-class v11, Landroid/os/INetworkManagementService;

    aput-object v11, v7, v9

    const/4 v9, 0x2

    const-class v11, Landroid/net/INetworkStatsService;

    aput-object v11, v7, v9

    const/4 v9, 0x3

    const-class v11, Landroid/net/INetworkPolicyManager;

    aput-object v11, v7, v9

    move-object/from16 v0, v116

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v118

    .line 542
    .local v118, qcsConstructor:Ljava/lang/reflect/Constructor;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    aput-object v30, v7, v9

    const/4 v9, 0x2

    aput-object v29, v7, v9

    const/4 v9, 0x3

    aput-object v25, v7, v9

    move-object/from16 v0, v118

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v115

    .line 544
    move-object/from16 v0, v115

    check-cast v0, Lcom/android/server/ConnectivityService;

    move-object/from16 v75, v0

    .line 550
    .end local v115           #qcCon:Ljava/lang/Object;
    .end local v116           #qcsClass:Ljava/lang/Class;
    .end local v117           #qcsClassLoader:Ldalvik/system/PathClassLoader;
    .end local v118           #qcsConstructor:Ljava/lang/reflect/Constructor;
    :goto_1d
    if-eqz v75, :cond_6

    .line 551
    const-string v7, "connectivity"

    move-object/from16 v0, v75

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 552
    move-object/from16 v0, v29

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 553
    move-object/from16 v0, v25

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 554
    invoke-virtual/range {v150 .. v150}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 555
    invoke-virtual/range {v152 .. v152}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_13

    .line 562
    .end local v144           #value:I
    :cond_6
    :goto_1e
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v127

    .line 564
    const-string v7, "servicediscovery"

    move-object/from16 v0, v127

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_14

    .line 571
    :goto_1f
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    new-instance v134, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v134

    invoke-direct {v0, v5}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_15

    .line 573
    .end local v133           #throttle:Lcom/android/server/ThrottleService;
    .local v134, throttle:Lcom/android/server/ThrottleService;
    :try_start_30
    const-string v7, "throttle"

    move-object/from16 v0, v134

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_43

    move-object/from16 v133, v134

    .line 580
    .end local v134           #throttle:Lcom/android/server/ThrottleService;
    .restart local v133       #throttle:Lcom/android/server/ThrottleService;
    :goto_20
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_16

    .line 592
    :goto_21
    if-eqz v103, :cond_7

    .line 593
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 597
    :cond_7
    if-eqz v61, :cond_8

    .line 598
    :try_start_32
    invoke-virtual/range {v61 .. v61}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_17

    .line 604
    :cond_8
    :goto_22
    if-eqz v77, :cond_9

    .line 605
    :try_start_33
    invoke-virtual/range {v77 .. v77}, Landroid/content/ContentService;->systemReady()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_18

    .line 611
    :cond_9
    :goto_23
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v112, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v112

    move-object/from16 v1, v129

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_19

    .line 613
    .end local v111           #notification:Lcom/android/server/NotificationManagerService;
    .local v112, notification:Lcom/android/server/NotificationManagerService;
    :try_start_35
    const-string v7, "notification"

    move-object/from16 v0, v112

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 614
    move-object/from16 v0, v25

    move-object/from16 v1, v112

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_42

    move-object/from16 v111, v112

    .line 620
    .end local v112           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v111       #notification:Lcom/android/server/NotificationManagerService;
    :goto_24
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1a

    .line 628
    :goto_25
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v99, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1b

    .line 630
    .end local v98           #location:Lcom/android/server/LocationManagerService;
    .local v99, location:Lcom/android/server/LocationManagerService;
    :try_start_38
    const-string v7, "location"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_41

    move-object/from16 v98, v99

    .line 636
    .end local v99           #location:Lcom/android/server/LocationManagerService;
    .restart local v98       #location:Lcom/android/server/LocationManagerService;
    :goto_26
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v79, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1c

    .line 638
    .end local v78           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v79, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3a
    const-string v7, "country_detector"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_40

    move-object/from16 v78, v79

    .line 644
    .end local v79           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v78       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_27
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v7, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1d

    .line 652
    :goto_28
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1e

    .line 659
    :goto_29
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 662
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    if-nez v33, :cond_a

    .line 664
    new-instance v149, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v149

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_1f

    .line 665
    .end local v148           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v149, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3e
    const-string v7, "wallpaper"

    move-object/from16 v0, v149

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_3f

    move-object/from16 v148, v149

    .line 672
    .end local v149           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v148       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_a
    :goto_2a
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 674
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_20

    .line 682
    :cond_b
    :goto_2b
    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    new-instance v85, Lcom/android/server/DockObserver;

    move-object/from16 v0, v85

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_21

    .end local v84           #dock:Lcom/android/server/DockObserver;
    .local v85, dock:Lcom/android/server/DockObserver;
    move-object/from16 v84, v85

    .line 690
    .end local v85           #dock:Lcom/android/server/DockObserver;
    .restart local v84       #dock:Lcom/android/server/DockObserver;
    :goto_2c
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_22

    .line 699
    :goto_2d
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance v143, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v143

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_23

    .line 702
    .end local v142           #usb:Lcom/android/server/usb/UsbService;
    .local v143, usb:Lcom/android/server/usb/UsbService;
    :try_start_43
    const-string v7, "usb"

    move-object/from16 v0, v143

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_3e

    move-object/from16 v142, v143

    .line 708
    .end local v143           #usb:Lcom/android/server/usb/UsbService;
    .restart local v142       #usb:Lcom/android/server/usb/UsbService;
    :goto_2e
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    new-instance v126, Lcom/android/server/SerialService;

    move-object/from16 v0, v126

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_24

    .line 711
    .end local v125           #serial:Lcom/android/server/SerialService;
    .local v126, serial:Lcom/android/server/SerialService;
    :try_start_45
    const-string v7, "serial"

    move-object/from16 v0, v126

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_3d

    move-object/from16 v125, v126

    .line 717
    .end local v126           #serial:Lcom/android/server/SerialService;
    .restart local v125       #serial:Lcom/android/server/SerialService;
    :goto_2f
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v138, Lcom/android/server/TwilightService;

    move-object/from16 v0, v138

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_25

    .end local v137           #twilight:Lcom/android/server/TwilightService;
    .local v138, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v137, v138

    .line 724
    .end local v138           #twilight:Lcom/android/server/TwilightService;
    .restart local v137       #twilight:Lcom/android/server/TwilightService;
    :goto_30
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v141, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v141

    move-object/from16 v1, v137

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_26

    .end local v140           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v141, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v140, v141

    .line 732
    .end local v141           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v140       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_31
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_27

    .line 740
    :goto_32
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v65, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v65

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_28

    .line 742
    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .local v65, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4a
    const-string v7, "appwidget"

    move-object/from16 v0, v65

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_3c

    move-object/from16 v64, v65

    .line 748
    .end local v65           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v64       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_33
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    new-instance v122, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v122

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_29

    .end local v121           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v122, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v121, v122

    .line 755
    .end local v122           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v121       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_34
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2a

    .line 762
    :goto_35
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v66, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v66

    invoke-direct {v0, v5}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    .line 764
    .local v66, atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    const-string v7, "AtCmdFwd"

    move-object/from16 v0, v66

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2b

    .line 774
    .end local v66           #atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    :goto_36
    move-object/from16 v0, p0

    move-object/from16 v1, v154

    invoke-direct {v0, v5, v1}, Lcom/android/server/ServerThread;->initOppoExService(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2c

    .line 782
    :goto_37
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    new-instance v110, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v110

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2d

    .end local v109           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v110, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v109, v110

    .line 789
    .end local v110           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v109       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_38
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v73, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2e

    .line 791
    .end local v72           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v73, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_51
    const-string v7, "commontime_management"

    move-object/from16 v0, v73

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_3b

    move-object/from16 v72, v73

    .line 797
    .end local v73           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v72       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_39
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_2f

    .line 803
    :goto_3a
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110040

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 806
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v87, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v87

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_30

    .line 809
    .end local v86           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v87, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_54
    const-string v7, "dreams"

    move-object/from16 v0, v87

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_3a

    move-object/from16 v86, v87

    .line 818
    .end local v87           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v86       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_c
    :goto_3b
    invoke-virtual/range {v154 .. v154}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 819
    .local v47, safeMode:Z
    if-eqz v47, :cond_1c

    .line 820
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 822
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 824
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 833
    :goto_3c
    :try_start_55
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_31

    .line 839
    :goto_3d
    :try_start_56
    invoke-virtual/range {v100 .. v100}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_32

    .line 844
    :goto_3e
    if-eqz v81, :cond_d

    .line 846
    :try_start_57
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_33

    .line 852
    :cond_d
    :goto_3f
    if-eqz v111, :cond_e

    .line 854
    :try_start_58
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_34

    .line 861
    :cond_e
    :goto_40
    :try_start_59
    invoke-virtual/range {v154 .. v154}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_35

    .line 866
    :goto_41
    if-eqz v47, :cond_f

    .line 867
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 873
    :cond_f
    invoke-virtual/range {v154 .. v154}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v74

    .line 874
    .local v74, config:Landroid/content/res/Configuration;
    new-instance v102, Landroid/util/DisplayMetrics;

    invoke-direct/range {v102 .. v102}, Landroid/util/DisplayMetrics;-><init>()V

    .line 875
    .local v102, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v147

    check-cast v147, Landroid/view/WindowManager;

    .line 876
    .local v147, w:Landroid/view/WindowManager;
    invoke-interface/range {v147 .. v147}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v102

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 877
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v74

    move-object/from16 v1, v102

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 880
    :try_start_5a
    move-object/from16 v0, v137

    move-object/from16 v1, v86

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_36

    .line 886
    :goto_42
    :try_start_5b
    invoke-interface/range {v113 .. v113}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_37

    .line 892
    :goto_43
    :try_start_5c
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_38

    .line 898
    :goto_44
    move-object/from16 v34, v5

    .line 899
    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v103

    .line 900
    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 901
    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 902
    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 903
    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 904
    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v75

    .line 905
    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v84

    .line 906
    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v142

    .line 907
    .local v42, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v53, v133

    .line 908
    .local v53, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v43, v137

    .line 909
    .local v43, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v44, v140

    .line 910
    .local v44, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v64

    .line 911
    .local v46, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v148

    .line 912
    .local v48, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v92

    .line 913
    .local v49, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v121

    .line 914
    .local v45, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v98

    .line 915
    .local v51, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v78

    .line 916
    .local v52, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v109

    .line 917
    .local v54, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v72

    .line 918
    .local v55, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v135

    .line 919
    .local v56, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v129

    .line 920
    .local v50, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v86

    .line 921
    .local v57, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v19

    .line 922
    .local v58, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v59, v131

    .line 923
    .local v59, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v60, v105

    .line 930
    .local v60, msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v60}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1065
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1066
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_10
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1070
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-void

    .line 118
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #throttleF:Lcom/android/server/ThrottleService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v59           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v60           #msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;
    .end local v61           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v68           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v70           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .end local v72           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v74           #config:Landroid/content/res/Configuration;
    .end local v75           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v77           #contentService:Landroid/content/ContentService;
    .end local v78           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v81           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v84           #dock:Lcom/android/server/DockObserver;
    .end local v86           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v89           #factoryTest:I
    .end local v90           #factoryTestStr:Ljava/lang/String;
    .end local v92           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v98           #location:Lcom/android/server/LocationManagerService;
    .end local v100           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v102           #metrics:Landroid/util/DisplayMetrics;
    .end local v103           #mountService:Lcom/android/server/MountService;
    .end local v105           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v109           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v111           #notification:Lcom/android/server/NotificationManagerService;
    .end local v113           #pm:Landroid/content/pm/IPackageManager;
    .end local v121           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v123           #regulatory:Lcom/android/server/RegulatoryObserver;
    .end local v125           #serial:Lcom/android/server/SerialService;
    .end local v127           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v129           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v131           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v133           #throttle:Lcom/android/server/ThrottleService;
    .end local v135           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v137           #twilight:Lcom/android/server/TwilightService;
    .end local v139           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v140           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v142           #usb:Lcom/android/server/usb/UsbService;
    .end local v145           #vibrator:Lcom/android/server/VibratorService;
    .end local v147           #w:Landroid/view/WindowManager;
    .end local v148           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v150           #wifi:Lcom/android/server/WifiService;
    .end local v152           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v154           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v155           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_11
    const/16 v120, 0x0

    goto/16 :goto_0

    .line 124
    .restart local v120       #reboot:Z
    :cond_12
    const/16 v119, 0x0

    .restart local v119       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 132
    .end local v119           #reason:Ljava/lang/String;
    .end local v120           #reboot:Z
    .restart local v90       #factoryTestStr:Ljava/lang/String;
    :cond_13
    invoke-static/range {v90 .. v90}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v89

    goto/16 :goto_2

    .line 269
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v61       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v70       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v72       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v75       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v77       #contentService:Landroid/content/ContentService;
    .restart local v80       #cryptState:Ljava/lang/String;
    .restart local v84       #dock:Lcom/android/server/DockObserver;
    .restart local v89       #factoryTest:I
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v103       #mountService:Lcom/android/server/MountService;
    .restart local v105       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v107       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v109       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v113       #pm:Landroid/content/pm/IPackageManager;
    .restart local v115       #qcCon:Ljava/lang/Object;
    .restart local v121       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v123       #regulatory:Lcom/android/server/RegulatoryObserver;
    .restart local v125       #serial:Lcom/android/server/SerialService;
    .restart local v127       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v132       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v133       #throttle:Lcom/android/server/ThrottleService;
    .restart local v137       #twilight:Lcom/android/server/TwilightService;
    .restart local v139       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v140       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v142       #usb:Lcom/android/server/usb/UsbService;
    .restart local v145       #vibrator:Lcom/android/server/VibratorService;
    .restart local v150       #wifi:Lcom/android/server/WifiService;
    .restart local v152       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v154       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v155       #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_14
    :try_start_5d
    const-string v7, "1"

    move-object/from16 v0, v80

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 270
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 274
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 297
    .restart local v91       #firstBoot:Z
    :catch_0
    move-exception v88

    .line 298
    .local v88, e:Ljava/lang/Throwable;
    :goto_45
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v88

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_5d} :catch_1

    goto/16 :goto_6

    .line 369
    .end local v80           #cryptState:Ljava/lang/String;
    .end local v88           #e:Ljava/lang/Throwable;
    .end local v91           #firstBoot:Z
    :catch_1
    move-exception v88

    move-object/from16 v131, v132

    .end local v132           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v97

    .end local v97           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v95, v96

    .line 370
    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .local v88, e:Ljava/lang/RuntimeException;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    :goto_46
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v88

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 302
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v88           #e:Ljava/lang/RuntimeException;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v131           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v80       #cryptState:Ljava/lang/String;
    .restart local v91       #firstBoot:Z
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v132       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 341
    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v67           #battery:Lcom/android/server/BatteryService;
    .end local v70           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v97           #lights:Lcom/android/server/LightsService;
    .end local v145           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v71       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v146       #vibrator:Lcom/android/server/VibratorService;
    :cond_17
    const/16 v22, 0x0

    goto/16 :goto_8

    :cond_18
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 361
    :cond_19
    const/4 v7, 0x1

    move/from16 v0, v89

    if-ne v0, v7, :cond_1a

    .line 362
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 369
    :catch_2
    move-exception v88

    move-object/from16 v70, v71

    .end local v71           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v70       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    move-object/from16 v131, v132

    .end local v132           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v145, v146

    .end local v146           #vibrator:Lcom/android/server/VibratorService;
    .restart local v145       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto :goto_46

    .line 364
    .end local v70           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v131           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v145           #vibrator:Lcom/android/server/VibratorService;
    .restart local v71       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v132       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #vibrator:Lcom/android/server/VibratorService;
    :cond_1a
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v69, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_5e} :catch_2

    .line 366
    .end local v68           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v69, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_5f
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v69

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_5f} :catch_5a

    move-object/from16 v68, v69

    .end local v69           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v68       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_a

    .line 392
    .end local v71           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .end local v80           #cryptState:Ljava/lang/String;
    .end local v91           #firstBoot:Z
    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .end local v132           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v146           #vibrator:Lcom/android/server/VibratorService;
    .restart local v64       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v70       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v78       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v81       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v86       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v92       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #location:Lcom/android/server/LocationManagerService;
    .restart local v100       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v111       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v129       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v131       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v135       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v145       #vibrator:Lcom/android/server/VibratorService;
    .restart local v148       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v88

    .line 393
    .local v88, e:Ljava/lang/Throwable;
    :goto_47
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 400
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v88

    .line 401
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 407
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v88

    .line 408
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 413
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v88

    .line 414
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 435
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v88

    .line 436
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 444
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v88

    .line 445
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 452
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v88

    .line 453
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 460
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v88

    .line 461
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 468
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v88

    .line 469
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 476
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v88

    .line 477
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 484
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v88

    .line 485
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 492
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v88

    .line 493
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 502
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v88

    move-object/from16 v25, v107

    .line 503
    .end local v107           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 510
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v88

    .line 511
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting RegulatoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 518
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v88

    .line 519
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 526
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v88

    .line 527
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 546
    .end local v88           #e:Ljava/lang/Throwable;
    .restart local v144       #value:I
    :cond_1b
    :try_start_60
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    new-instance v76, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v76

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_13

    .end local v75           #connectivity:Lcom/android/server/ConnectivityService;
    .local v76, connectivity:Lcom/android/server/ConnectivityService;
    move-object/from16 v75, v76

    .end local v76           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v75       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_1d

    .line 557
    .end local v115           #qcCon:Ljava/lang/Object;
    .end local v144           #value:I
    :catch_13
    move-exception v88

    .line 558
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 566
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v88

    .line 567
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 575
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v88

    .line 576
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 583
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v88

    .line 584
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 599
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v88

    .line 600
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 606
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v88

    .line 607
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 615
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v88

    .line 616
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 623
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v88

    .line 624
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 631
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v88

    .line 632
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 639
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v88

    .line 640
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 647
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v88

    .line 648
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 655
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v88

    .line 656
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 667
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v88

    .line 668
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 676
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v88

    .line 677
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 685
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v88

    .line 686
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 694
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v88

    .line 695
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 703
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v88

    .line 704
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 712
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v88

    .line 713
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v88

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 719
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v88

    .line 720
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 727
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v88

    .line 728
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 735
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v88

    .line 736
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v88

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 743
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v88

    .line 744
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 750
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v88

    .line 751
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 757
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v88

    .line 758
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 765
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v88

    .line 766
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting AtCmdFwd Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 777
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v88

    .line 778
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 784
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v88

    .line 785
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 792
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v88

    .line 793
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 799
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v88

    .line 800
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 810
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v88

    .line 811
    .restart local v88       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 827
    .end local v88           #e:Ljava/lang/Throwable;
    .restart local v47       #safeMode:Z
    :cond_1c
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3c

    .line 834
    :catch_31
    move-exception v88

    .line 835
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 840
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v88

    .line 841
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 847
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v88

    .line 848
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 855
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v88

    .line 856
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 862
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v88

    .line 863
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 881
    .end local v88           #e:Ljava/lang/Throwable;
    .restart local v74       #config:Landroid/content/res/Configuration;
    .restart local v102       #metrics:Landroid/util/DisplayMetrics;
    .restart local v147       #w:Landroid/view/WindowManager;
    :catch_36
    move-exception v88

    .line 882
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 887
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v88

    .line 888
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 893
    .end local v88           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v88

    .line 894
    .restart local v88       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 280
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47           #safeMode:Z
    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v74           #config:Landroid/content/res/Configuration;
    .end local v78           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v81           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v86           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v88           #e:Ljava/lang/Throwable;
    .end local v92           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v98           #location:Lcom/android/server/LocationManagerService;
    .end local v100           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v102           #metrics:Landroid/util/DisplayMetrics;
    .end local v111           #notification:Lcom/android/server/NotificationManagerService;
    .end local v129           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v131           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v135           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v147           #w:Landroid/view/WindowManager;
    .end local v148           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v80       #cryptState:Ljava/lang/String;
    .restart local v91       #firstBoot:Z
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v107       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v115       #qcCon:Ljava/lang/Object;
    .restart local v132       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_39
    move-exception v7

    goto/16 :goto_5

    .line 810
    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v67           #battery:Lcom/android/server/BatteryService;
    .end local v80           #cryptState:Ljava/lang/String;
    .end local v91           #firstBoot:Z
    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .end local v97           #lights:Lcom/android/server/LightsService;
    .end local v107           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v115           #qcCon:Ljava/lang/Object;
    .end local v132           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v64       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v78       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v81       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v87       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v92       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #location:Lcom/android/server/LocationManagerService;
    .restart local v100       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v111       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v129       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v131       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v135       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v148       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3a
    move-exception v88

    move-object/from16 v86, v87

    .end local v87           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v86       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto :goto_5a

    .line 792
    .end local v72           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v73       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_3b
    move-exception v88

    move-object/from16 v72, v73

    .end local v73           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v72       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_59

    .line 743
    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v65       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_3c
    move-exception v88

    move-object/from16 v64, v65

    .end local v65           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v64       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_58

    .line 712
    .end local v125           #serial:Lcom/android/server/SerialService;
    .restart local v126       #serial:Lcom/android/server/SerialService;
    :catch_3d
    move-exception v88

    move-object/from16 v125, v126

    .end local v126           #serial:Lcom/android/server/SerialService;
    .restart local v125       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_57

    .line 703
    .end local v142           #usb:Lcom/android/server/usb/UsbService;
    .restart local v143       #usb:Lcom/android/server/usb/UsbService;
    :catch_3e
    move-exception v88

    move-object/from16 v142, v143

    .end local v143           #usb:Lcom/android/server/usb/UsbService;
    .restart local v142       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_56

    .line 667
    .end local v148           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v149       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3f
    move-exception v88

    move-object/from16 v148, v149

    .end local v149           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v148       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_55

    .line 639
    .end local v78           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v79       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_40
    move-exception v88

    move-object/from16 v78, v79

    .end local v79           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v78       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_54

    .line 631
    .end local v98           #location:Lcom/android/server/LocationManagerService;
    .restart local v99       #location:Lcom/android/server/LocationManagerService;
    :catch_41
    move-exception v88

    move-object/from16 v98, v99

    .end local v99           #location:Lcom/android/server/LocationManagerService;
    .restart local v98       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_53

    .line 615
    .end local v111           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v112       #notification:Lcom/android/server/NotificationManagerService;
    :catch_42
    move-exception v88

    move-object/from16 v111, v112

    .end local v112           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v111       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_52

    .line 575
    .end local v133           #throttle:Lcom/android/server/ThrottleService;
    .restart local v134       #throttle:Lcom/android/server/ThrottleService;
    :catch_43
    move-exception v88

    move-object/from16 v133, v134

    .end local v134           #throttle:Lcom/android/server/ThrottleService;
    .restart local v133       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_51

    .line 526
    .end local v150           #wifi:Lcom/android/server/WifiService;
    .restart local v115       #qcCon:Ljava/lang/Object;
    .restart local v151       #wifi:Lcom/android/server/WifiService;
    :catch_44
    move-exception v88

    move-object/from16 v150, v151

    .end local v151           #wifi:Lcom/android/server/WifiService;
    .restart local v150       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_50

    .line 518
    .end local v152           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v153       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_45
    move-exception v88

    move-object/from16 v152, v153

    .end local v153           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v152       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_4f

    .line 502
    :catch_46
    move-exception v88

    goto/16 :goto_4e

    .line 492
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v107       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v108       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_47
    move-exception v88

    move-object/from16 v29, v108

    .end local v108           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4d

    .line 484
    .end local v135           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v136       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_48
    move-exception v88

    move-object/from16 v135, v136

    .end local v136           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v135       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4c

    .line 460
    .end local v129           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v130       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_49
    move-exception v88

    move-object/from16 v129, v130

    .end local v130           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v129       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_4b

    .line 452
    .end local v81           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v82       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_4a
    move-exception v88

    move-object/from16 v81, v82

    .end local v82           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v81       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_4a

    .line 444
    .end local v100           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v101       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_4b
    move-exception v88

    move-object/from16 v100, v101

    .end local v101           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v100       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_49

    .line 435
    .end local v103           #mountService:Lcom/android/server/MountService;
    .restart local v104       #mountService:Lcom/android/server/MountService;
    :catch_4c
    move-exception v88

    move-object/from16 v103, v104

    .end local v104           #mountService:Lcom/android/server/MountService;
    .restart local v103       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_48

    .line 422
    :catch_4d
    move-exception v7

    goto/16 :goto_10

    .line 392
    .end local v92           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v93       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_4e
    move-exception v88

    move-object/from16 v92, v93

    .end local v93           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v92       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_47

    .line 369
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v78           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v81           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v86           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v92           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v98           #location:Lcom/android/server/LocationManagerService;
    .end local v100           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v111           #notification:Lcom/android/server/NotificationManagerService;
    .end local v129           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v135           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v148           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v83       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v114       #power:Lcom/android/server/power/PowerManagerService;
    :catch_4f
    move-exception v88

    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v83

    .end local v83           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v114

    .end local v114           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v97

    .end local v97           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_46

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v83       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v114       #power:Lcom/android/server/power/PowerManagerService;
    :catch_50
    move-exception v88

    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v83

    .end local v83           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v114

    .end local v114           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v97

    .end local v97           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v83       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    :catch_51
    move-exception v88

    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v83

    .end local v83           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v97

    .end local v97           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    :catch_52
    move-exception v88

    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v97

    .end local v97           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v105           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v131           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v106       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v132       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_53
    move-exception v88

    move-object/from16 v105, v106

    .end local v106           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v105       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v131, v132

    .end local v132           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v97

    .end local v97           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v61           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v131           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v80       #cryptState:Ljava/lang/String;
    .restart local v91       #firstBoot:Z
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v132       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_54
    move-exception v88

    move-object/from16 v131, v132

    .end local v132           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v97

    .end local v97           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v61, v62

    .end local v62           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v61       #accountManager:Landroid/accounts/AccountManagerService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v70           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v131           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v71       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v132       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_55
    move-exception v88

    move-object/from16 v70, v71

    .end local v71           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v70       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    move-object/from16 v131, v132

    .end local v132           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v97

    .end local v97           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v70           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v131           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v71       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v132       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_56
    move-exception v88

    move-object/from16 v70, v71

    .end local v71           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v70       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    move-object/from16 v131, v132

    .end local v132           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v70           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v131           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v71       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v132       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_57
    move-exception v88

    move-object/from16 v70, v71

    .end local v71           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v70       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    move-object/from16 v131, v132

    .end local v132           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v70           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v131           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v145           #vibrator:Lcom/android/server/VibratorService;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v71       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v132       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #vibrator:Lcom/android/server/VibratorService;
    :catch_58
    move-exception v88

    move-object/from16 v70, v71

    .end local v71           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v70       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    move-object/from16 v131, v132

    .end local v132           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v145, v146

    .end local v146           #vibrator:Lcom/android/server/VibratorService;
    .restart local v145       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v70           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v131           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v145           #vibrator:Lcom/android/server/VibratorService;
    .restart local v71       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v132       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #vibrator:Lcom/android/server/VibratorService;
    :catch_59
    move-exception v88

    move-object/from16 v70, v71

    .end local v71           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v70       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    move-object/from16 v131, v132

    .end local v132           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v94

    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v145, v146

    .end local v146           #vibrator:Lcom/android/server/VibratorService;
    .restart local v145       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v68           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v70           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v131           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v145           #vibrator:Lcom/android/server/VibratorService;
    .restart local v69       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v71       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v132       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #vibrator:Lcom/android/server/VibratorService;
    :catch_5a
    move-exception v88

    move-object/from16 v70, v71

    .end local v71           #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    .restart local v70       #breathinglight:Landroid/os/nubia/breathlight/BreathinglightService;
    move-object/from16 v131, v132

    .end local v132           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v131       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v68, v69

    .end local v69           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v68       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v145, v146

    .end local v146           #vibrator:Lcom/android/server/VibratorService;
    .restart local v145       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v95, v96

    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .line 297
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v61           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v95           #installer:Lcom/android/server/pm/Installer;
    .end local v131           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v62       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v96       #installer:Lcom/android/server/pm/Installer;
    .restart local v97       #lights:Lcom/android/server/LightsService;
    .restart local v132       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_5b
    move-exception v88

    move-object/from16 v61, v62

    .end local v62           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v61       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_45

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v67           #battery:Lcom/android/server/BatteryService;
    .end local v80           #cryptState:Ljava/lang/String;
    .end local v91           #firstBoot:Z
    .end local v94           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v96           #installer:Lcom/android/server/pm/Installer;
    .end local v97           #lights:Lcom/android/server/LightsService;
    .end local v132           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v64       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v78       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v81       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v86       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v92       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v95       #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #location:Lcom/android/server/LocationManagerService;
    .restart local v100       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v111       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v129       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v131       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v135       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v148       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1d
    move-object/from16 v25, v107

    .end local v107           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3b
.end method

.method private initOppoExService(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .parameter "context"
    .parameter "wm"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "Jun.Zhang@Plf.Framework, for start oppo ex service, three pointers move shot screen, Wanglan add for smali"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    :try_start_0
    const-string v2, "SystemServer"

    const-string v3, "Oppo Expand Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/oppo/OppoExService;

    invoke-direct {v1, p1, p2}, Lcom/android/server/oppo/OppoExService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .local v1, oppoExService:Lcom/android/server/oppo/OppoExService;
    const-string v2, "OPPOExService"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #oppoExService:Lcom/android/server/oppo/OppoExService;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "SystemServer"

    const-string v3, "Failure starting Oppo Service"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
