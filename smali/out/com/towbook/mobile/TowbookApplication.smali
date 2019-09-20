.class public Lcom/towbook/mobile/TowbookApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "TowbookApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/towbook/mobile/TowbookApplication$DriversCallback;,
        Lcom/towbook/mobile/TowbookApplication$UsersCallback;
    }
.end annotation

.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    formUri = "https://api.towbook.com/errorReporting/"
    formUriBasicAuthLogin = ""
    formUriBasicAuthPassword = ""
    mode = .enum Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;
    reportDialogClass = Lcom/towbook/mobile/TowbookCrashReportDialog;
    resToastText = 0x7f0f009a
.end annotation


# static fields
.field private static SENDER_ID:Ljava/lang/String; = "130641930591"

.field public static STATUS_BAR_NOTIFICATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TowbookApplication"

.field private static application:Landroid/content/Context;

.field public static bSpeedyConnection:Z

.field public static cachedChats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/Chat;",
            ">;"
        }
    .end annotation
.end field

.field public static cachedDrivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/Driver;",
            ">;"
        }
    .end annotation
.end field

.field public static cachedUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/User;",
            ">;"
        }
    .end annotation
.end field

.field private static callRequestActivity:Lcom/towbook/mobile/CallRequestPopupActivity;

.field public static chatListActivity:Lcom/towbook/mobile/ChatListActivity;

.field private static config:Lcom/towbook/api/ConfigSettings;

.field public static currentChatActivity:Lcom/towbook/mobile/ChatViewActivity;

.field public static currentUser:Lcom/towbook/api/CurrentUser;

.field private static gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field public static isAcceptRejectEnabled:Z

.field public static isGpsEnabled:Z

.field public static isLoggedIn:Z

.field private static mConfigVersion:Ljava/lang/String;

.field private static myAccount:Lcom/towbook/api/MyAccount;

.field public static final pattern:[J

.field public static paused:I

.field public static r:Landroid/media/Ringtone;

.field private static randomColor:I

.field public static registrationHandle:Ljava/lang/String;

.field public static resumed:I

.field public static ringtoneTimerTask:Ljava/util/TimerTask;

.field public static started:I

.field public static stopped:I

.field public static telephonyManager:Landroid/telephony/TelephonyManager;

.field private static timer:Ljava/util/Timer;

.field public static userAgent:Ljava/lang/String;

.field public static v:Landroid/os/Vibrator;

.field public static versionNumber:Ljava/lang/String;


# instance fields
.field public configMetadata:Lcom/towbook/mobile/classes/ConfigMetadata;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    .line 83
    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->pattern:[J

    return-void

    nop

    :array_a
    .array-data 8
        0x0
        0x96
        0x32
        0x96
        0x32
        0x96
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/towbook/mobile/TowbookApplication;->configMetadata:Lcom/towbook/mobile/classes/ConfigMetadata;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 82
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->SENDER_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .registers 1

    .line 82
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object v0
.end method

.method public static cancelRingtoneTimerTask()V
    .registers 1

    .line 181
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 182
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 184
    :cond_9
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->ringtoneTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_12

    .line 185
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->ringtoneTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 187
    :cond_12
    new-instance v0, Lcom/towbook/mobile/TowbookApplication$1;

    invoke-direct {v0}, Lcom/towbook/mobile/TowbookApplication$1;-><init>()V

    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->ringtoneTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method public static forceRandomColor()I
    .registers 1

    .line 137
    sget-object v0, Lcom/towbook/mobile/classes/ColorGenerator;->DEFAULT:Lcom/towbook/mobile/classes/ColorGenerator;

    .line 139
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ColorGenerator;->getRandomColor()I

    move-result v0

    sput v0, Lcom/towbook/mobile/TowbookApplication;->randomColor:I

    .line 140
    sget v0, Lcom/towbook/mobile/TowbookApplication;->randomColor:I

    return v0
.end method

.method public static forceRegistrationRefresh()V
    .registers 4

    .line 322
    :try_start_0
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/towbook/mobile/TowbookApplication;->SENDER_ID:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->registrationHandle:Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_15
    return-void
.end method

.method public static getCachedChats()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Chat;",
            ">;"
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->cachedChats:Ljava/util/List;

    return-object v0
.end method

.method public static getCachedDrivers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/Driver;",
            ">;"
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->cachedDrivers:Ljava/util/List;

    return-object v0
.end method

.method public static getCachedUsers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/towbook/api/User;",
            ">;"
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->cachedUsers:Ljava/util/List;

    return-object v0
.end method

.method public static getCallRequestActivity()Lcom/towbook/mobile/CallRequestPopupActivity;
    .registers 1

    .line 172
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->callRequestActivity:Lcom/towbook/mobile/CallRequestPopupActivity;

    return-object v0
.end method

.method public static getConfig(Landroid/content/Context;)Lcom/towbook/api/ConfigSettings;
    .registers 2

    .line 480
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->config:Lcom/towbook/api/ConfigSettings;

    if-nez v0, :cond_14

    :try_start_4
    const-string v0, "configs"

    .line 482
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/towbook/api/ConfigSettings;

    invoke-static {p0, v0}, Lcom/towbook/api/core/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/towbook/api/ConfigSettings;

    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->config:Lcom/towbook/api/ConfigSettings;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_14

    .line 486
    :catch_14
    :cond_14
    sget-object p0, Lcom/towbook/mobile/TowbookApplication;->config:Lcom/towbook/api/ConfigSettings;

    return-object p0
.end method

.method public static getConfigVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 598
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->mConfigVersion:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, "X_CONFIG_VERSION"

    .line 599
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->mConfigVersion:Ljava/lang/String;

    .line 602
    :cond_c
    sget-object p0, Lcom/towbook/mobile/TowbookApplication;->mConfigVersion:Ljava/lang/String;

    return-object p0
.end method

.method public static getCurrentUser(Landroid/content/Context;)Lcom/towbook/api/CurrentUser;
    .registers 2

    .line 533
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->currentUser:Lcom/towbook/api/CurrentUser;

    if-nez v0, :cond_18

    :try_start_4
    const-string v0, "user"

    .line 535
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/towbook/api/CurrentUser;

    invoke-static {p0, v0}, Lcom/towbook/api/core/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/towbook/api/CurrentUser;

    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->currentUser:Lcom/towbook/api/CurrentUser;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_18

    :catch_15
    const/4 p0, 0x0

    .line 537
    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->currentUser:Lcom/towbook/api/CurrentUser;

    .line 541
    :cond_18
    :goto_18
    sget-object p0, Lcom/towbook/mobile/TowbookApplication;->currentUser:Lcom/towbook/api/CurrentUser;

    return-object p0
.end method

.method public static getDriverx(Ljava/util/List;I)Lcom/towbook/api/DriverTruckDefault;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/DriverTruckDefault;",
            ">;I)",
            "Lcom/towbook/api/DriverTruckDefault;"
        }
    .end annotation

    .line 518
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/DriverTruckDefault;

    .line 519
    invoke-virtual {v0}, Lcom/towbook/api/DriverTruckDefault;->getDriverId()I

    move-result v1

    if-ne v1, p1, :cond_4

    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRandomColor()I
    .registers 1

    .line 127
    sget v0, Lcom/towbook/mobile/TowbookApplication;->randomColor:I

    if-nez v0, :cond_c

    .line 128
    sget-object v0, Lcom/towbook/mobile/classes/ColorGenerator;->DEFAULT:Lcom/towbook/mobile/classes/ColorGenerator;

    .line 130
    invoke-virtual {v0}, Lcom/towbook/mobile/classes/ColorGenerator;->getRandomColor()I

    move-result v0

    sput v0, Lcom/towbook/mobile/TowbookApplication;->randomColor:I

    .line 133
    :cond_c
    sget v0, Lcom/towbook/mobile/TowbookApplication;->randomColor:I

    return v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 1

    .line 714
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 715
    invoke-static {}, Lcom/towbook/utils/AppUtils;->getAppUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->userAgent:Ljava/lang/String;

    .line 718
    :cond_a
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static handleNotifications(Landroid/content/Context;)V
    .registers 3

    .line 329
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->SENDER_ID:Ljava/lang/String;

    const-class v1, Lcom/towbook/common/AzureNotificationHandler;

    invoke-static {p0, v0, v1}, Lcom/microsoft/windowsazure/notifications/NotificationsManager;->handleNotifications(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private initStetho()V
    .registers 1

    return-void
.end method

.method private initializeRingtoneTask()V
    .registers 2

    .line 452
    new-instance v0, Lcom/towbook/mobile/TowbookApplication$8;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/TowbookApplication$8;-><init>(Lcom/towbook/mobile/TowbookApplication;)V

    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->ringtoneTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method static final synthetic lambda$signOut$0$TowbookApplication(Landroid/app/Activity;)V
    .registers 2

    .line 701
    :try_start_0
    new-instance v0, Lcom/towbook/data/repository/CallGeofenceRepository;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-direct {v0, p0}, Lcom/towbook/data/repository/CallGeofenceRepository;-><init>(Landroid/app/Application;)V

    .line 702
    invoke-virtual {v0}, Lcom/towbook/data/repository/CallGeofenceRepository;->clear()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 704
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    return-void
.end method

.method public static loadDrivers(Landroid/content/Context;Lcom/towbook/mobile/TowbookApplication$DriversCallback;)V
    .registers 3

    .line 250
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->cachedDrivers:Ljava/util/List;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->cachedDrivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_13

    .line 266
    :cond_d
    sget-object p0, Lcom/towbook/mobile/TowbookApplication;->cachedDrivers:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/towbook/mobile/TowbookApplication$DriversCallback;->run(Ljava/util/List;)V

    goto :goto_1b

    .line 251
    :cond_13
    :goto_13
    new-instance v0, Lcom/towbook/mobile/TowbookApplication$4;

    invoke-direct {v0, p0, p1}, Lcom/towbook/mobile/TowbookApplication$4;-><init>(Landroid/content/Context;Lcom/towbook/mobile/TowbookApplication$DriversCallback;)V

    .line 264
    invoke-virtual {v0}, Lcom/towbook/mobile/TowbookApplication$4;->execute()V

    :goto_1b
    return-void
.end method

.method public static loadUsers(Landroid/content/Context;Lcom/towbook/mobile/TowbookApplication$UsersCallback;)V
    .registers 3

    .line 225
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->cachedUsers:Ljava/util/List;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->cachedUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_13

    .line 241
    :cond_d
    sget-object p0, Lcom/towbook/mobile/TowbookApplication;->cachedUsers:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/towbook/mobile/TowbookApplication$UsersCallback;->run(Ljava/util/List;)V

    goto :goto_1b

    .line 226
    :cond_13
    :goto_13
    new-instance v0, Lcom/towbook/mobile/TowbookApplication$3;

    invoke-direct {v0, p0, p1}, Lcom/towbook/mobile/TowbookApplication$3;-><init>(Landroid/content/Context;Lcom/towbook/mobile/TowbookApplication$UsersCallback;)V

    .line 239
    invoke-virtual {v0}, Lcom/towbook/mobile/TowbookApplication$3;->execute()V

    :goto_1b
    return-void
.end method

.method public static refreshCachedChats(Landroid/content/Context;)V
    .registers 3

    .line 271
    new-instance v0, Lcom/towbook/mobile/TowbookApplication$5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/towbook/mobile/TowbookApplication$5;-><init>(Landroid/content/Context;I)V

    .line 283
    invoke-virtual {v0}, Lcom/towbook/mobile/TowbookApplication$5;->execute()V

    return-void
.end method

.method public static refreshCachedChats(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 4

    .line 304
    new-instance v0, Lcom/towbook/mobile/TowbookApplication$7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/towbook/mobile/TowbookApplication$7;-><init>(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 317
    invoke-virtual {v0}, Lcom/towbook/mobile/TowbookApplication$7;->execute()V

    return-void
.end method

.method public static refreshCachedUsers(Landroid/content/Context;)V
    .registers 2

    .line 205
    new-instance v0, Lcom/towbook/mobile/TowbookApplication$2;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/TowbookApplication$2;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-virtual {v0}, Lcom/towbook/mobile/TowbookApplication$2;->execute()V

    return-void
.end method

.method public static refreshCachedUsers(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 3

    .line 287
    new-instance v0, Lcom/towbook/mobile/TowbookApplication$6;

    invoke-direct {v0, p0, p1}, Lcom/towbook/mobile/TowbookApplication$6;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 300
    invoke-virtual {v0}, Lcom/towbook/mobile/TowbookApplication$6;->execute()V

    return-void
.end method

.method private registerWithNotificationHubs()V
    .registers 5

    .line 462
    new-instance v0, Lcom/towbook/mobile/TowbookApplication$9;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/TowbookApplication$9;-><init>(Lcom/towbook/mobile/TowbookApplication;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 476
    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_1a

    invoke-virtual {v0, v1}, Lcom/towbook/mobile/TowbookApplication$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1f

    :cond_1a
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1f
    return-void
.end method

.method public static setCachedChats(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Chat;",
            ">;)V"
        }
    .end annotation

    .line 168
    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->cachedChats:Ljava/util/List;

    return-void
.end method

.method public static setCachedDrivers(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Driver;",
            ">;)V"
        }
    .end annotation

    .line 160
    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->cachedDrivers:Ljava/util/List;

    return-void
.end method

.method public static setCachedUsers(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/User;",
            ">;)V"
        }
    .end annotation

    .line 152
    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->cachedUsers:Ljava/util/List;

    return-void
.end method

.method public static setCallRequestActivity(Lcom/towbook/mobile/CallRequestPopupActivity;)V
    .registers 1

    .line 176
    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->callRequestActivity:Lcom/towbook/mobile/CallRequestPopupActivity;

    return-void
.end method

.method public static setConfig(Lcom/towbook/api/ConfigSettings;Landroid/content/Context;)V
    .registers 3

    if-eqz p0, :cond_1b

    .line 506
    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->config:Lcom/towbook/api/ConfigSettings;

    :try_start_4
    const-string v0, "configs"

    .line 509
    invoke-static {p0}, Lcom/towbook/api/core/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_1b

    :catch_e
    move-exception p0

    const-string p1, "TowbookApplication"

    .line 511
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public static setConfigVersion(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "X_CONFIG_VERSION"

    .line 606
    invoke-static {v0, p1, p0}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 607
    sput-object p1, Lcom/towbook/mobile/TowbookApplication;->mConfigVersion:Ljava/lang/String;

    return-void
.end method

.method public static setCurrentUser(Lcom/towbook/api/CurrentUser;Landroid/content/Context;)V
    .registers 3

    if-eqz p0, :cond_1b

    .line 574
    :try_start_2
    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->currentUser:Lcom/towbook/api/CurrentUser;

    const-string v0, "user"

    .line 575
    invoke-static {p0}, Lcom/towbook/api/core/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    goto :goto_1b

    :catch_e
    move-exception p0

    const-string p1, "TowbookApplication"

    .line 578
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public static setUser(Lcom/towbook/api/CurrentUser;)V
    .registers 1

    .line 144
    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->currentUser:Lcom/towbook/api/CurrentUser;

    return-void
.end method

.method public static startRingtoneTask()V
    .registers 7

    .line 641
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->timer:Ljava/util/Timer;

    .line 642
    sget-object v1, Lcom/towbook/mobile/TowbookApplication;->timer:Ljava/util/Timer;

    sget-object v2, Lcom/towbook/mobile/TowbookApplication;->ringtoneTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x5dc

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public static updateUserPreferences(Lcom/towbook/api/CurrentUser;)V
    .registers 4

    .line 197
    invoke-virtual {p0}, Lcom/towbook/api/CurrentUser;->getAcceptReject()Lcom/towbook/api/user/AcceptReject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/user/AcceptReject;->getEnableRequest()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/towbook/mobile/TowbookApplication;->isAcceptRejectEnabled:Z

    const-string v0, "TowbookApplication"

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set accept/reject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/towbook/mobile/TowbookApplication;->isAcceptRejectEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/towbook/api/CurrentUser;->getLocationTracking()Lcom/towbook/api/user/LocationTracking;

    move-result-object p0

    invoke-virtual {p0}, Lcom/towbook/api/user/LocationTracking;->getReportLocation()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/towbook/mobile/TowbookApplication;->isGpsEnabled:Z

    const-string p0, "TowbookApplication"

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set gps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/towbook/mobile/TowbookApplication;->isGpsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearCurrentImageNotification()V
    .registers 3

    const-string v0, "notification"

    .line 333
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/TowbookApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 334
    sget v1, Lcom/towbook/mobile/TowbookApplication;->STATUS_BAR_NOTIFICATION:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public getConfig()Lcom/towbook/api/ConfigSettings;
    .registers 3

    .line 490
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->config:Lcom/towbook/api/ConfigSettings;

    if-nez v0, :cond_29

    :try_start_4
    const-string v0, "configs"

    .line 492
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/towbook/api/ConfigSettings;

    invoke-static {v0, v1}, Lcom/towbook/api/core/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/ConfigSettings;

    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->config:Lcom/towbook/api/ConfigSettings;

    const-string v0, "CONFIG : "

    const-string v1, "JSON parse successful!"

    .line 494
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_29

    :catch_1c
    move-exception v0

    const-string v1, "Error getting config"

    .line 496
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 497
    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->config:Lcom/towbook/api/ConfigSettings;

    .line 501
    :cond_29
    :goto_29
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->config:Lcom/towbook/api/ConfigSettings;

    return-object v0
.end method

.method public getConfigMetadata()Lcom/towbook/mobile/classes/ConfigMetadata;
    .registers 2

    .line 646
    iget-object v0, p0, Lcom/towbook/mobile/TowbookApplication;->configMetadata:Lcom/towbook/mobile/classes/ConfigMetadata;

    return-object v0
.end method

.method public getCurrentUser()Lcom/towbook/api/CurrentUser;
    .registers 7

    .line 545
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->currentUser:Lcom/towbook/api/CurrentUser;

    if-nez v0, :cond_92

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_6
    const-string v2, "user"

    .line 547
    invoke-static {v2, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/towbook/api/CurrentUser;

    invoke-static {v2, v3}, Lcom/towbook/api/core/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/CurrentUser;

    sput-object v2, Lcom/towbook/mobile/TowbookApplication;->currentUser:Lcom/towbook/api/CurrentUser;

    .line 549
    sget-object v2, Lcom/towbook/mobile/TowbookApplication;->currentUser:Lcom/towbook/api/CurrentUser;

    if-eqz v2, :cond_92

    const-string v2, "TowbookApplication"

    const-string v3, "USER %s: JSON parse successful!"

    .line 550
    new-array v4, v1, [Ljava/lang/Object;

    sget-object v5, Lcom/towbook/mobile/TowbookApplication;->currentUser:Lcom/towbook/api/CurrentUser;

    invoke-virtual {v5}, Lcom/towbook/api/CurrentUser;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_6 .. :try_end_2f} :catch_30

    goto :goto_92

    :catch_30
    move-exception v2

    const-string v3, "TowbookApplication"

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PARSE ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n>> stored: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user"

    invoke-static {v2, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->clearAllPrefsMinusExceptions(Landroid/content/Context;)V

    .line 556
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/towbook/mobile/TowbookApplication;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/towbook/mobile/TowbookApplication;->setConfig(Lcom/towbook/api/ConfigSettings;)Lcom/towbook/mobile/TowbookApplication;

    .line 557
    invoke-static {v3}, Lcom/towbook/mobile/TowbookApplication;->setUser(Lcom/towbook/api/CurrentUser;)V

    const-string v2, "%s.ACTION_LOGOUT"

    .line 559
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 560
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 561
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/TowbookApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 562
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/authenticator/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 563
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 564
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/TowbookApplication;->startActivity(Landroid/content/Intent;)V

    .line 568
    :cond_92
    :goto_92
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->currentUser:Lcom/towbook/api/CurrentUser;

    return-object v0
.end method

.method public getMyAccount()Lcom/towbook/api/MyAccount;
    .registers 4

    .line 584
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->myAccount:Lcom/towbook/api/MyAccount;

    if-nez v0, :cond_25

    :try_start_4
    const-string v0, "myaccount"

    .line 586
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/towbook/api/MyAccount;

    invoke-static {v0, v1}, Lcom/towbook/api/core/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/MyAccount;

    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->myAccount:Lcom/towbook/api/MyAccount;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_25

    :catch_15
    move-exception v0

    const-string v1, "TowbookApplication"

    .line 588
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 590
    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->myAccount:Lcom/towbook/api/MyAccount;

    .line 594
    :cond_25
    :goto_25
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->myAccount:Lcom/towbook/api/MyAccount;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 733
    sget p1, Lcom/towbook/mobile/TowbookApplication;->paused:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/towbook/mobile/TowbookApplication;->paused:I

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .line 728
    sget p1, Lcom/towbook/mobile/TowbookApplication;->resumed:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/towbook/mobile/TowbookApplication;->resumed:I

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 748
    sget p1, Lcom/towbook/mobile/TowbookApplication;->started:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/towbook/mobile/TowbookApplication;->started:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 753
    sget p1, Lcom/towbook/mobile/TowbookApplication;->stopped:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/towbook/mobile/TowbookApplication;->stopped:I

    return-void
.end method

.method public onCreate()V
    .registers 7

    .line 339
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 341
    invoke-direct {p0}, Lcom/towbook/mobile/TowbookApplication;->initStetho()V

    .line 343
    invoke-virtual {p0, p0}, Lcom/towbook/mobile/TowbookApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 345
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 346
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 348
    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->application:Landroid/content/Context;

    .line 349
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/towbook/mobile/classes/ConnectivityChangeReceiver;->forceConnectivityCheck(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/towbook/mobile/TowbookApplication;->bSpeedyConnection:Z

    const-string v0, "phone"

    .line 350
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/TowbookApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->telephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "selected_sound"

    .line 354
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 356
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->r:Landroid/media/Ringtone;

    goto :goto_6e

    .line 358
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0e0015

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->r:Landroid/media/Ringtone;

    :goto_6e
    const-string v0, "vibrator"

    .line 360
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/TowbookApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->v:Landroid/os/Vibrator;

    .line 362
    invoke-direct {p0}, Lcom/towbook/mobile/TowbookApplication;->initializeRingtoneTask()V

    .line 364
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_dc

    .line 365
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->getAcceptReject()Lcom/towbook/api/user/AcceptReject;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 366
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->getAcceptReject()Lcom/towbook/api/user/AcceptReject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/user/AcceptReject;->getEnableRequest()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 367
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->getAcceptReject()Lcom/towbook/api/user/AcceptReject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/user/AcceptReject;->getEnableRequest()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/towbook/mobile/TowbookApplication;->isAcceptRejectEnabled:Z

    goto :goto_af

    .line 369
    :cond_ad
    sput-boolean v1, Lcom/towbook/mobile/TowbookApplication;->isAcceptRejectEnabled:Z

    .line 371
    :goto_af
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->getLocationTracking()Lcom/towbook/api/user/LocationTracking;

    move-result-object v0

    if-eqz v0, :cond_da

    .line 372
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->getLocationTracking()Lcom/towbook/api/user/LocationTracking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/user/LocationTracking;->getReportLocation()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_da

    .line 373
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->getLocationTracking()Lcom/towbook/api/user/LocationTracking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/user/LocationTracking;->getReportLocation()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/towbook/mobile/TowbookApplication;->isGpsEnabled:Z

    goto :goto_dc

    .line 375
    :cond_da
    sput-boolean v1, Lcom/towbook/mobile/TowbookApplication;->isGpsEnabled:Z

    :cond_dc
    :goto_dc
    const-string v0, "TowbookApplication"

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Azure Handler Init :: handleNotifications ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/towbook/mobile/TowbookApplication;->SENDER_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->SENDER_ID:Ljava/lang/String;

    const-class v2, Lcom/towbook/common/AzureNotificationHandler;

    invoke-static {p0, v0, v2}, Lcom/microsoft/windowsazure/notifications/NotificationsManager;->handleNotifications(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 383
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 384
    invoke-direct {p0}, Lcom/towbook/mobile/TowbookApplication;->registerWithNotificationHubs()V

    .line 387
    new-instance v0, Lcom/crashlytics/android/Crashlytics$Builder;

    invoke-direct {v0}, Lcom/crashlytics/android/Crashlytics$Builder;-><init>()V

    new-instance v2, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-direct {v2}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;-><init>()V

    const/4 v3, 0x0

    .line 388
    invoke-virtual {v2, v3}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled(Z)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->build()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/crashlytics/android/Crashlytics$Builder;->core(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/Crashlytics$Builder;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics$Builder;->build()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    .line 391
    new-array v1, v1, [Lio/fabric/sdk/android/Kit;

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 393
    invoke-static {p0}, Lnet/danlew/android/joda/JodaTimeAndroid;->init(Landroid/content/Context;)V

    .line 399
    :try_start_12e
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 401
    sget-object v1, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/towbook/utils/AppUtils;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance v1, Lorg/acra/sender/HttpSender;

    sget-object v2, Lorg/acra/sender/HttpSender$Method;->POST:Lorg/acra/sender/HttpSender$Method;

    sget-object v4, Lorg/acra/sender/HttpSender$Type;->FORM:Lorg/acra/sender/HttpSender$Type;

    const-string v5, "https://api.towbook.com/errorReporting/"

    invoke-direct {v1, v2, v4, v5, v0}, Lorg/acra/sender/HttpSender;-><init>(Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/util/Map;)V

    .line 404
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->setReportSender(Lorg/acra/sender/ReportSender;)V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_155} :catch_1d4

    .line 408
    :try_start_155
    invoke-static {}, Lcom/towbook/utils/AppUtils;->getGitRepositoryState()Lcom/towbook/mobile/classes/GitRepositoryState;

    move-result-object v0

    .line 410
    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/towbook/mobile/TowbookApplication;->versionNumber:Ljava/lang/String;

    .line 412
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v1

    const-string v2, "git-describe"

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/GitRepositoryState;->getDescribe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v1

    const-string v2, "git-commit-id"

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/GitRepositoryState;->getCommitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v1

    const-string v2, "git-commit-name"

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/GitRepositoryState;->getCommitMessageShort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 415
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v1

    const-string v2, "git-branch"

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/GitRepositoryState;->getBranch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v1

    const-string v2, "git-build-time"

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/GitRepositoryState;->getBuildTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    const-string v1, "towbook-version"

    sget-object v2, Lcom/towbook/mobile/TowbookApplication;->versionNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1bd
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_1bd} :catch_1be
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_1bd} :catch_1d4

    goto :goto_1c2

    :catch_1be
    move-exception v0

    .line 419
    :try_start_1bf
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 422
    :goto_1c2
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    const-string v1, "towbook-device-id"

    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/towbook/utils/AppUtils;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1d3} :catch_1d4

    goto :goto_1d8

    :catch_1d4
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    :goto_1d8
    new-instance v0, Lcom/towbook/utils/OkConnectionFactory;

    invoke-direct {v0}, Lcom/towbook/utils/OkConnectionFactory;-><init>()V

    invoke-static {v0}, Lcom/towbook/utils/HttpRequest;->setConnectionFactory(Lcom/towbook/utils/HttpRequest$ConnectionFactory;)V

    const-string v0, "AA7aeaf7b2e9b839d81f9f42945a569bcae75f2245"

    .line 429
    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V

    const-string v0, "setting_theme"

    .line 431
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fe

    const v0, 0x7f1001b4

    .line 432
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/TowbookApplication;->setTheme(I)V

    goto :goto_204

    :cond_1fe
    const v0, 0x7f1001b3

    .line 434
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/TowbookApplication;->setTheme(I)V

    :goto_204
    return-void
.end method

.method provideGson()Lcom/google/gson/Gson;
    .registers 2
    .annotation runtime Lcom/google/inject/Provides;
    .end annotation

    .annotation runtime Lcom/google/inject/Singleton;
    .end annotation

    .line 637
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public setConfig(Lcom/towbook/api/ConfigSettings;)Lcom/towbook/mobile/TowbookApplication;
    .registers 3

    .line 525
    sput-object p1, Lcom/towbook/mobile/TowbookApplication;->config:Lcom/towbook/api/ConfigSettings;

    const-string v0, "configs"

    .line 527
    invoke-static {p1}, Lcom/towbook/api/core/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-object p0
.end method

.method public setConfigMetadata(Lcom/towbook/mobile/classes/ConfigMetadata;)V
    .registers 2

    .line 650
    iput-object p1, p0, Lcom/towbook/mobile/TowbookApplication;->configMetadata:Lcom/towbook/mobile/classes/ConfigMetadata;

    return-void
.end method

.method public setSpeedyConnection(ZLandroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_14

    .line 615
    invoke-static {p2}, Lcom/towbook/mobile/service/PusherService;->isMyPusherServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 616
    invoke-static {p2}, Lcom/towbook/mobile/service/PusherService;->stop(Landroid/content/Context;)V

    .line 618
    :cond_b
    invoke-static {p2}, Lcom/towbook/mobile/service/LocationService;->isServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 619
    invoke-static {p2}, Lcom/towbook/mobile/service/LocationService;->stop(Landroid/content/Context;)V

    .line 622
    :cond_14
    sget-boolean v0, Lcom/towbook/mobile/TowbookApplication;->bSpeedyConnection:Z

    if-nez v0, :cond_23

    if-eqz p1, :cond_23

    .line 623
    invoke-static {p2}, Lcom/towbook/mobile/service/PusherService;->isMyPusherServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 624
    invoke-static {p2}, Lcom/towbook/mobile/service/PusherService;->start(Landroid/content/Context;)V

    .line 631
    :cond_23
    sput-boolean p1, Lcom/towbook/mobile/TowbookApplication;->bSpeedyConnection:Z

    return-void
.end method

.method public signOut(Landroid/app/Activity;)V
    .registers 6

    .line 654
    invoke-static {p1}, Lcom/towbook/utils/AppUtils;->clearAllPrefsMinusExceptions(Landroid/content/Context;)V

    .line 658
    :try_start_3
    invoke-static {p1}, Lcom/towbook/mobile/service/PusherService;->stop(Landroid/content/Context;)V

    .line 660
    invoke-static {p1}, Lcom/towbook/mobile/service/LocationService;->stop(Landroid/content/Context;)V

    .line 662
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/towbook/mobile/service/NotificationLoopingService;->stop(Landroid/content/Context;)V

    .line 664
    invoke-static {p1}, Lcom/microsoft/windowsazure/notifications/NotificationsManager;->stopHandlingNotifications(Landroid/content/Context;)V

    .line 666
    invoke-static {p1}, Lcom/towbook/mobile/service/CallRequestBubbleService;->isMyCallRequestRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 667
    invoke-static {p1}, Lcom/towbook/mobile/service/CallRequestBubbleService;->stop(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 671
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_21
    :goto_21
    const/4 v0, 0x0

    .line 675
    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->cachedUsers:Ljava/util/List;

    const/4 v0, 0x0

    .line 676
    sput-boolean v0, Lcom/towbook/mobile/TowbookApplication;->isLoggedIn:Z

    :try_start_27
    const-string v1, "notification"

    .line 679
    invoke-virtual {p0, v1}, Lcom/towbook/mobile/TowbookApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 680
    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v1

    .line 682
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_37
    const-string v1, "%s.ACTION_LOGOUT"

    const/4 v2, 0x1

    .line 686
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/towbook/mobile/TowbookApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 687
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 688
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/TowbookApplication;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, -0x1

    .line 690
    sput v0, Lcom/towbook/mobile/CallListActivity;->lastSelectedCompanyId:I

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    .line 692
    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    sput-object v0, Lcom/towbook/mobile/CallListActivity;->listResponseLastRefresh:Ljava/util/List;

    .line 694
    invoke-static {p1}, Lcom/towbook/utils/AppUtils;->removeAccount(Landroid/content/Context;)V

    .line 699
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/towbook/mobile/TowbookApplication$$Lambda$0;

    invoke-direct {v1, p1}, Lcom/towbook/mobile/TowbookApplication$$Lambda$0;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 706
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 708
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/authenticator/LoginActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x34000000

    .line 709
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 710
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/TowbookApplication;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
