.class public Lorg/acra/ACRA;
.super Ljava/lang/Object;
.source "ACRA.java"


# static fields
.field public static final DEV_LOGGING:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "ACRA"

.field public static final PREF_ALWAYS_ACCEPT:Ljava/lang/String; = "acra.alwaysaccept"

.field public static final PREF_DISABLE_ACRA:Ljava/lang/String; = "acra.disable"

.field public static final PREF_ENABLE_ACRA:Ljava/lang/String; = "acra.enable"

.field public static final PREF_ENABLE_DEVICE_ID:Ljava/lang/String; = "acra.deviceid.enable"

.field public static final PREF_ENABLE_SYSTEM_LOGS:Ljava/lang/String; = "acra.syslog.enable"

.field public static final PREF_LAST_VERSION_NR:Ljava/lang/String; = "acra.lastVersionNr"

.field public static final PREF_USER_EMAIL_ADDRESS:Ljava/lang/String; = "acra.user.email"

.field private static configProxy:Lorg/acra/ACRAConfiguration;

.field private static errorReporterSingleton:Lorg/acra/ErrorReporter;

.field public static log:Lorg/acra/log/ACRALog;

.field private static mApplication:Landroid/app/Application;

.field private static mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lorg/acra/log/AndroidLogDelegate;

    invoke-direct {v0}, Lorg/acra/log/AndroidLogDelegate;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/SharedPreferences;)Z
    .registers 1

    .line 40
    invoke-static {p0}, Lorg/acra/ACRA;->shouldDisableACRA(Landroid/content/SharedPreferences;)Z

    move-result p0

    return p0
.end method

.method static checkCrashResources(Lorg/acra/annotation/ReportsCrashes;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/ACRAConfigurationException;
        }
    .end annotation

    .line 256
    sget-object v0, Lorg/acra/ACRA$2;->$SwitchMap$org$acra$ReportingInteractionMode:[I

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6e

    goto :goto_6d

    .line 274
    :pswitch_10
    const-class v0, Lorg/acra/CrashReportDialog;

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->reportDialogClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result p0

    if-nez p0, :cond_6d

    .line 275
    new-instance p0, Lorg/acra/ACRAConfigurationException;

    const-string v0, "DIALOG mode: using the (default) CrashReportDialog requires you to define the resDialogText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {p0, v0}, Lorg/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 264
    :pswitch_2a
    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_57

    .line 268
    :cond_3d
    const-class v0, Lorg/acra/CrashReportDialog;

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->reportDialogClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result p0

    if-nez p0, :cond_6d

    .line 269
    new-instance p0, Lorg/acra/ACRAConfigurationException;

    const-string v0, "NOTIFICATION mode: using the (default) CrashReportDialog requires you have to define the resDialogText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {p0, v0}, Lorg/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    :cond_57
    :goto_57
    new-instance p0, Lorg/acra/ACRAConfigurationException;

    const-string v0, "NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText parameters in your application @ReportsCrashes() annotation."

    invoke-direct {p0, v0}, Lorg/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 258
    :pswitch_5f
    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result p0

    if-nez p0, :cond_6d

    .line 259
    new-instance p0, Lorg/acra/ACRAConfigurationException;

    const-string v0, "TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {p0, v0}, Lorg/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6d
    :goto_6d
    return-void

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_2a
        :pswitch_10
    .end packed-switch
.end method

.method public static getACRASharedPreferences()Landroid/content/SharedPreferences;
    .registers 3

    .line 294
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    const-string v1, ""

    .line 295
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 296
    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesMode()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 298
    :cond_1f
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static getApplication()Landroid/app/Application;
    .registers 1

    .line 358
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getConfig()Lorg/acra/ACRAConfiguration;
    .registers 3

    .line 308
    sget-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/ACRAConfiguration;

    if-nez v0, :cond_19

    .line 309
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    if-nez v0, :cond_11

    .line 310
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Calling ACRA.getConfig() before ACRA.init() gives you an empty configuration instance. You might prefer calling ACRA.getNewDefaultConfig(Application) to get an instance with default values taken from a @ReportsCrashes annotation."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_11
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lorg/acra/ACRA;->getNewDefaultConfig(Landroid/app/Application;)Lorg/acra/ACRAConfiguration;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/ACRAConfiguration;

    .line 315
    :cond_19
    sget-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/ACRAConfiguration;

    return-object v0
.end method

.method public static getErrorReporter()Lorg/acra/ErrorReporter;
    .registers 2

    .line 220
    sget-object v0, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;

    if-nez v0, :cond_c

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access ErrorReporter before ACRA#init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_c
    sget-object v0, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;

    return-object v0
.end method

.method public static getNewDefaultConfig(Landroid/app/Application;)Lorg/acra/ACRAConfiguration;
    .registers 3

    if-eqz p0, :cond_14

    .line 335
    new-instance v0, Lorg/acra/ACRAConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v1, Lorg/acra/annotation/ReportsCrashes;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/acra/annotation/ReportsCrashes;

    invoke-direct {v0, p0}, Lorg/acra/ACRAConfiguration;-><init>(Lorg/acra/annotation/ReportsCrashes;)V

    return-object v0

    .line 337
    :cond_14
    new-instance p0, Lorg/acra/ACRAConfiguration;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/acra/ACRAConfiguration;-><init>(Lorg/acra/annotation/ReportsCrashes;)V

    return-object p0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 5

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/acra/annotation/ReportsCrashes;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/acra/annotation/ReportsCrashes;

    if-nez v0, :cond_2b

    .line 116
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACRA#init called but no ReportsCrashes annotation on Application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_2b
    new-instance v1, Lorg/acra/ACRAConfiguration;

    invoke-direct {v1, v0}, Lorg/acra/ACRAConfiguration;-><init>(Lorg/acra/annotation/ReportsCrashes;)V

    invoke-static {p0, v1}, Lorg/acra/ACRA;->init(Landroid/app/Application;Lorg/acra/ACRAConfiguration;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lorg/acra/ACRAConfiguration;)V
    .registers 3

    const/4 v0, 0x1

    .line 135
    invoke-static {p0, p1, v0}, Lorg/acra/ACRA;->init(Landroid/app/Application;Lorg/acra/ACRAConfiguration;Z)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lorg/acra/ACRAConfiguration;Z)V
    .registers 6

    .line 156
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_e

    .line 157
    sget-object p0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string p2, "ACRA#init called more than once. Won\'t do anything more."

    invoke-interface {p0, p1, p2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :cond_e
    sput-object p0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    if-nez p1, :cond_1c

    .line 163
    sget-object p0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string p2, "ACRA#init called but no ACRAConfiguration provided"

    invoke-interface {p0, p1, p2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_1c
    invoke-static {p1}, Lorg/acra/ACRA;->setConfig(Lorg/acra/ACRAConfiguration;)V

    .line 168
    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 171
    :try_start_23
    invoke-static {p1}, Lorg/acra/ACRA;->checkCrashResources(Lorg/acra/annotation/ReportsCrashes;)V

    .line 173
    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA is enabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", intializing..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p0}, Lorg/acra/ACRA;->shouldDisableACRA(Landroid/content/SharedPreferences;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 177
    new-instance v0, Lorg/acra/ErrorReporter;

    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1, p0, p1}, Lorg/acra/ErrorReporter;-><init>(Landroid/app/Application;Landroid/content/SharedPreferences;Z)V

    .line 180
    invoke-virtual {v0}, Lorg/acra/ErrorReporter;->setDefaultReportSenders()V

    .line 182
    sput-object v0, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;

    if-eqz p2, :cond_6b

    .line 186
    invoke-virtual {v0}, Lorg/acra/ErrorReporter;->checkReportsOnApplicationStart()V
    :try_end_60
    .catch Lorg/acra/ACRAConfigurationException; {:try_start_23 .. :try_end_60} :catch_61

    goto :goto_6b

    :catch_61
    move-exception p1

    .line 190
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error : "

    invoke-interface {p2, v0, v1, p1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    :cond_6b
    :goto_6b
    new-instance p1, Lorg/acra/ACRA$1;

    invoke-direct {p1}, Lorg/acra/ACRA$1;-><init>()V

    sput-object p1, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 210
    sget-object p1, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static isDebuggable()Z
    .registers 3

    .line 349
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 351
    :try_start_7
    sget-object v2, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_13} :catch_19

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1

    :catch_19
    return v1
.end method

.method public static setConfig(Lorg/acra/ACRAConfiguration;)V
    .registers 1

    .line 325
    sput-object p0, Lorg/acra/ACRA;->configProxy:Lorg/acra/ACRAConfiguration;

    return-void
.end method

.method public static setLog(Lorg/acra/log/ACRALog;)V
    .registers 1

    .line 362
    sput-object p0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    return-void
.end method

.method private static shouldDisableACRA(Landroid/content/SharedPreferences;)Z
    .registers 4

    :try_start_0
    const-string v0, "acra.enable"

    const/4 v1, 0x1

    .line 241
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "acra.disable"

    xor-int/2addr v0, v1

    .line 242
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method
