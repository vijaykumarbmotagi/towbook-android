.class public Lcom/towbook/mobile/service/LocationService;
.super Lroboguice/service/RoboService;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/towbook/mobile/service/LocationService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_BROADCAST:Ljava/lang/String; = "com.towbook.mobile.location_service.broadcast"

.field public static final EXTRA_LOCATION:Ljava/lang/String; = "com.towbook.mobile.location_service.location"

.field private static final EXTRA_STARTED_FROM_NOTIFICATION:Ljava/lang/String; = "com.towbook.mobile.location_service.started_from_notification"

.field public static final FASTEST_UPDATE_INTERVAL_IN_MILLISECONDS:J = 0x7530L

.field private static final KEY_REQUESTING_LOCATION_UPDATES:Ljava/lang/String; = "requesting_locaction_updates"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.towbook.mobile.location_service"

.field private static final TAG:Ljava/lang/String; = "LocationService"

.field public static final UPDATE_INTERVAL_IN_MILLISECONDS:J = 0xea60L

.field public static mLastLocation:Landroid/location/Location;

.field public static mLastUpdateTime:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mServiceHandler:Landroid/os/Handler;

.field private notificationFactory:Lcom/towbook/common/NotificationFactory;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Lroboguice/service/RoboService;-><init>()V

    .line 68
    new-instance v0, Lcom/towbook/mobile/service/LocationService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/service/LocationService$LocalBinder;-><init>(Lcom/towbook/mobile/service/LocationService;)V

    iput-object v0, p0, Lcom/towbook/mobile/service/LocationService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/towbook/mobile/service/LocationService;Landroid/location/Location;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/towbook/mobile/service/LocationService;->onNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 59
    sget-object v0, Lcom/towbook/mobile/service/LocationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createLocationRequest()V
    .registers 4

    .line 338
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/towbook/mobile/service/LocationService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 339
    iget-object v0, p0, Lcom/towbook/mobile/service/LocationService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 340
    iget-object v0, p0, Lcom/towbook/mobile/service/LocationService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 341
    iget-object v0, p0, Lcom/towbook/mobile/service/LocationService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method private getLastLocation()V
    .registers 5

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/towbook/mobile/service/LocationService;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 318
    invoke-virtual {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/towbook/mobile/service/LocationService$2;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/service/LocationService$2;-><init>(Lcom/towbook/mobile/service/LocationService;)V

    .line 319
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_26

    :catch_f
    move-exception v0

    .line 330
    sget-object v1, Lcom/towbook/mobile/service/LocationService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lost location permission."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method

.method private getNotification()Landroid/app/Notification;
    .registers 6

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/service/LocationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.towbook.mobile.location_service.started_from_notification"

    const/4 v2, 0x1

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v3, 0x8000000

    .line 291
    invoke-static {p0, v1, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/towbook/mobile/MainActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 298
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f00cd

    .line 299
    invoke-virtual {p0, v3}, Lcom/towbook/mobile/service/LocationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08013f

    invoke-virtual {v1, v4, v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f0f0185

    .line 301
    invoke-virtual {p0, v1}, Lcom/towbook/mobile/service/LocationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 303
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f080254

    .line 304
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 307
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_62

    .line 308
    iget-object v1, p0, Lcom/towbook/mobile/service/LocationService;->notificationFactory:Lcom/towbook/common/NotificationFactory;

    const-class v2, Lcom/towbook/mobile/service/LocationService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/towbook/common/NotificationFactory;->getOrCreateChannel(Ljava/lang/String;)V

    const-string v1, "com.towbook.mobile.service"

    .line 309
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 312
    :cond_62
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static isServiceRunning(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "activity"

    .line 397
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 398
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 399
    const-class v1, Lcom/towbook/mobile/service/LocationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 400
    sget-object p0, Lcom/towbook/mobile/service/LocationService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service is running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/towbook/mobile/service/LocationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_4f
    const/4 p0, 0x0

    return p0
.end method

.method private onNewLocation(Landroid/location/Location;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 414
    sget-object v2, Lcom/towbook/mobile/service/LocationService;->TAG:Ljava/lang/String;

    const-string v3, "New Location: Lat: %s, Long: %s"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sput-object v1, Lcom/towbook/mobile/service/LocationService;->mLastLocation:Landroid/location/Location;

    .line 417
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/towbook/mobile/service/LocationService;->mLastUpdateTime:Ljava/lang/String;

    const-string v2, "lastKnownLocation"

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/towbook/mobile/service/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 423
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.towbook.mobile.location_service.broadcast"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.towbook.mobile.location_service.location"

    .line 424
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 425
    new-instance v3, Lcom/towbook/api/LocationUpdate;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Lcom/towbook/api/LocationUpdate;-><init>(Ljava/lang/Long;DDFLjava/lang/String;)V

    .line 427
    sget-object v5, Lcom/towbook/mobile/service/LocationService;->TAG:Ljava/lang/String;

    const-string v6, "Sending broadcast [%s] with extra = %s = %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "com.towbook.mobile.location_service.broadcast"

    aput-object v10, v9, v7

    const-string v7, "com.towbook.mobile.location_service.location"

    aput-object v7, v9, v8

    invoke-static/range {p1 .. p1}, Lcom/towbook/api/core/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/towbook/mobile/service/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 431
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_b5

    .line 432
    iget-object v1, v0, Lcom/towbook/mobile/service/LocationService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct/range {p0 .. p0}, Lcom/towbook/mobile/service/LocationService;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 435
    :cond_b5
    new-instance v1, Lcom/towbook/mobile/service/LocationService$3;

    invoke-direct {v1, v0, v0, v3}, Lcom/towbook/mobile/service/LocationService$3;-><init>(Lcom/towbook/mobile/service/LocationService;Landroid/content/Context;Lcom/towbook/api/LocationUpdate;)V

    .line 444
    invoke-virtual {v1}, Lcom/towbook/mobile/service/LocationService$3;->execute()V

    return-void
.end method

.method static requestingLocationUpdates(Landroid/content/Context;)Z
    .registers 3

    .line 381
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "requesting_locaction_updates"

    const/4 v1, 0x0

    .line 382
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static setRequestingLocationUpdates(Landroid/content/Context;Z)V
    .registers 3

    .line 390
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 391
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "requesting_locaction_updates"

    .line 392
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 393
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 3

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/service/LocationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1a

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/service/LocationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1a
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .registers 3

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/service/LocationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 175
    iget-object p1, p0, Lcom/towbook/mobile/service/LocationService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 163
    invoke-super {p0, p1}, Lroboguice/service/RoboService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 121
    invoke-super {p0}, Lroboguice/service/RoboService;->onCreate()V

    .line 123
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/service/LocationService;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 125
    new-instance v0, Lcom/towbook/mobile/service/LocationService$1;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/service/LocationService$1;-><init>(Lcom/towbook/mobile/service/LocationService;)V

    iput-object v0, p0, Lcom/towbook/mobile/service/LocationService;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 133
    invoke-direct {p0}, Lcom/towbook/mobile/service/LocationService;->createLocationRequest()V

    .line 134
    invoke-direct {p0}, Lcom/towbook/mobile/service/LocationService;->getLastLocation()V

    .line 136
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/towbook/mobile/service/LocationService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 138
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/towbook/mobile/service/LocationService;->mServiceHandler:Landroid/os/Handler;

    const-string v0, "notification"

    .line 139
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/service/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/towbook/mobile/service/LocationService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 141
    invoke-virtual {p0}, Lcom/towbook/mobile/service/LocationService;->requestLocationUpdates()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 216
    invoke-virtual {p0}, Lcom/towbook/mobile/service/LocationService;->removeLocationUpdates()V

    .line 218
    iget-object v0, p0, Lcom/towbook/mobile/service/LocationService;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 220
    invoke-super {p0}, Lroboguice/service/RoboService;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 146
    sget-object p1, Lcom/towbook/mobile/service/LocationService;->TAG:Ljava/lang/String;

    const-string p2, "Service started"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_15

    const/4 p1, 0x1

    .line 149
    invoke-direct {p0}, Lcom/towbook/mobile/service/LocationService;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/towbook/mobile/service/LocationService;->startForeground(ILandroid/app/Notification;)V

    :cond_15
    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 2

    .line 158
    invoke-super {p0, p1}, Lroboguice/service/RoboService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public removeLocationUpdates()V
    .registers 5

    .line 263
    sget-object v0, Lcom/towbook/mobile/service/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "Removing location updates"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 265
    :try_start_8
    iget-object v1, p0, Lcom/towbook/mobile/service/LocationService;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v2, p0, Lcom/towbook/mobile/service/LocationService;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    const/4 v1, 0x0

    .line 266
    invoke-static {p0, v1}, Lcom/towbook/mobile/service/LocationService;->setRequestingLocationUpdates(Landroid/content/Context;Z)V

    .line 270
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_37

    .line 271
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/service/LocationService;->stopForeground(Z)V
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_1c} :catch_1d

    goto :goto_37

    :catch_1d
    move-exception v1

    .line 275
    invoke-static {p0, v0}, Lcom/towbook/mobile/service/LocationService;->setRequestingLocationUpdates(Landroid/content/Context;Z)V

    .line 277
    sget-object v0, Lcom/towbook/mobile/service/LocationService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lost location permission. Could not remove updates. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :goto_37
    return-void
.end method

.method public requestLocationUpdates()V
    .registers 5

    .line 240
    sget-object v0, Lcom/towbook/mobile/service/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "Requesting location updates"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 241
    invoke-static {p0, v0}, Lcom/towbook/mobile/service/LocationService;->setRequestingLocationUpdates(Landroid/content/Context;Z)V

    .line 250
    :try_start_b
    iget-object v0, p0, Lcom/towbook/mobile/service/LocationService;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/towbook/mobile/service/LocationService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/towbook/mobile/service/LocationService;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_34

    :catch_19
    move-exception v0

    const/4 v1, 0x0

    .line 252
    invoke-static {p0, v1}, Lcom/towbook/mobile/service/LocationService;->setRequestingLocationUpdates(Landroid/content/Context;Z)V

    .line 254
    sget-object v1, Lcom/towbook/mobile/service/LocationService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lost location permission. Could not request updates. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method

.method public serviceIsRunningInForeground(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "activity"

    .line 360
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 362
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 363
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 364
    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v0, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_39
    const/4 p1, 0x0

    return p1
.end method
