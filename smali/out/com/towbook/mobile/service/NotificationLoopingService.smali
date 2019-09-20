.class public Lcom/towbook/mobile/service/NotificationLoopingService;
.super Lroboguice/service/RoboService;
.source "NotificationLoopingService.java"


# static fields
.field public static requestStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final vibrationPattern:[J


# instance fields
.field private mPlayer:Landroid/media/MediaPlayer;

.field private notificationFactory:Lcom/towbook/common/NotificationFactory;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private ringtoneTimerTask:Ljava/util/TimerTask;

.field private timer:Ljava/util/Timer;

.field private v:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    .line 38
    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/towbook/mobile/service/NotificationLoopingService;->vibrationPattern:[J

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
    .registers 1

    .line 37
    invoke-direct {p0}, Lroboguice/service/RoboService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/towbook/mobile/service/NotificationLoopingService;)Landroid/os/Vibrator;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->v:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$100()[J
    .registers 1

    .line 37
    sget-object v0, Lcom/towbook/mobile/service/NotificationLoopingService;->vibrationPattern:[J

    return-object v0
.end method

.method static synthetic access$200(Lcom/towbook/mobile/service/NotificationLoopingService;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/towbook/mobile/service/NotificationLoopingService;->play()V

    return-void
.end method

.method private play()V
    .registers 4

    const-string v0, "selected_sound"

    .line 180
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 184
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->getTowbookRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1f

    :cond_11
    const-string v1, "SILENT"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 186
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 188
    :goto_1f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_5d

    const-string v1, "audio"

    .line 189
    invoke-virtual {p0, v1}, Lcom/towbook/mobile/service/NotificationLoopingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-nez v1, :cond_30

    return-void

    :cond_30
    if-eqz v0, :cond_64

    .line 196
    :try_start_32
    iget-object v1, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_3d

    .line 197
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->mPlayer:Landroid/media/MediaPlayer;

    .line 199
    :cond_3d
    iget-object v1, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 200
    iget-object v1, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 201
    iget-object v1, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 202
    iget-object v0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 203
    iget-object v0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_57} :catch_58

    goto :goto_64

    :catch_58
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_64

    .line 209
    :cond_5d
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    :cond_64
    :goto_64
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    .line 157
    invoke-static {p0, v0}, Lcom/towbook/mobile/service/NotificationLoopingService;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/service/NotificationLoopingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "requestId"

    .line 162
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_16

    .line 165
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_19

    .line 167
    :cond_16
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_19
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .registers 3

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/service/NotificationLoopingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 5

    .line 57
    invoke-super {p0}, Lroboguice/service/RoboService;->onCreate()V

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_20

    .line 60
    iget-object v0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->notificationFactory:Lcom/towbook/common/NotificationFactory;

    const/4 v1, 0x0

    const-string v2, "Notification Service is running"

    const-class v3, Lcom/towbook/mobile/service/NotificationLoopingService;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/towbook/common/NotificationFactory;->createNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/towbook/mobile/service/NotificationLoopingService;->startForeground(ILandroid/app/Notification;)V

    :cond_20
    const-string v0, "vibrator"

    .line 65
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/service/NotificationLoopingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->v:Landroid/os/Vibrator;

    .line 67
    new-instance v0, Lcom/towbook/mobile/service/NotificationLoopingService$1;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/service/NotificationLoopingService$1;-><init>(Lcom/towbook/mobile/service/NotificationLoopingService;)V

    iput-object v0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->ringtoneTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 127
    :try_start_5
    iget-object v0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 128
    iget-object v0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 130
    :cond_12
    iget-object v0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_17} :catch_17

    .line 135
    :catch_17
    iput-object v1, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->mPlayer:Landroid/media/MediaPlayer;

    .line 138
    :cond_19
    iget-object v0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_24

    .line 139
    iget-object v0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 140
    iput-object v1, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->timer:Ljava/util/Timer;

    .line 144
    :cond_24
    iget-object v0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->ringtoneTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2f

    .line 145
    iget-object v0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->ringtoneTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 146
    iput-object v1, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->ringtoneTimerTask:Ljava/util/TimerTask;

    :cond_2f
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10

    if-eqz p1, :cond_13

    .line 86
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_13

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "requestId"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    :cond_13
    const-string p1, ""

    .line 88
    :goto_15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x2

    if-nez p2, :cond_29

    sget-object p2, Lcom/towbook/mobile/service/NotificationLoopingService;->requestStack:Ljava/util/List;

    if-eqz p2, :cond_29

    sget-object p2, Lcom/towbook/mobile/service/NotificationLoopingService;->requestStack:Ljava/util/List;

    .line 90
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    return p3

    :cond_29
    :try_start_29
    const-string p2, "setting_noti_repeat"

    .line 96
    invoke-static {p2, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_43

    .line 97
    iget-object p2, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->v:Landroid/os/Vibrator;

    sget-object v1, Lcom/towbook/mobile/service/NotificationLoopingService;->vibrationPattern:[J

    invoke-virtual {p2, v1, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 98
    invoke-direct {p0}, Lcom/towbook/mobile/service/NotificationLoopingService;->play()V

    goto :goto_65

    .line 101
    :cond_43
    sget-object p2, Lcom/towbook/mobile/TowbookApplication;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p2

    if-nez p2, :cond_5e

    .line 102
    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    iput-object p2, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->timer:Ljava/util/Timer;

    .line 103
    iget-object v0, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->ringtoneTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5dc

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_65

    .line 105
    :cond_5e
    iget-object p2, p0, Lcom/towbook/mobile/service/NotificationLoopingService;->v:Landroid/os/Vibrator;

    sget-object v1, Lcom/towbook/mobile/service/NotificationLoopingService;->vibrationPattern:[J

    invoke-virtual {p2, v1, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 109
    :goto_65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_80

    .line 110
    sget-object p2, Lcom/towbook/mobile/service/NotificationLoopingService;->requestStack:Ljava/util/List;

    if-nez p2, :cond_76

    .line 111
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    sput-object p2, Lcom/towbook/mobile/service/NotificationLoopingService;->requestStack:Ljava/util/List;

    .line 114
    :cond_76
    sget-object p2, Lcom/towbook/mobile/service/NotificationLoopingService;->requestStack:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_80
    :goto_80
    return p3
.end method
