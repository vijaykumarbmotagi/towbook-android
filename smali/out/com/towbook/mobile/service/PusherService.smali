.class public Lcom/towbook/mobile/service/PusherService;
.super Lroboguice/service/RoboService;
.source "PusherService.java"

# interfaces
.implements Lcom/pusher/client/connection/ConnectionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/towbook/mobile/service/PusherService$LocalBinder;
    }
.end annotation


# static fields
.field private static final CONFIG_UPDATED:Ljava/lang/String; = "CONFIG_UPDATED"

.field private static final TAG:Ljava/lang/String; = "PusherService"


# instance fields
.field private active:Ljava/lang/Boolean;

.field private final backgroundThread:Ljava/util/concurrent/Executor;

.field dbAdapter:Lcom/towbook/mobile/adapter/DBAdapter;

.field private final mBinder:Landroid/os/IBinder;

.field private mBoundService:Lcom/towbook/mobile/service/LocationService;

.field mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field mIsFetchingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mServerConn:Landroid/content/ServiceConnection;

.field private mainChannelName:Ljava/lang/String;

.field private messageChannelName:Ljava/lang/String;

.field private notificationFactory:Lcom/towbook/common/NotificationFactory;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private outMessenger:Landroid/os/Messenger;

.field private privateGpsChannelName:Ljava/lang/String;

.field public pusher:Lcom/pusher/client/Pusher;

.field requests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/CallRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 99
    invoke-direct {p0}, Lroboguice/service/RoboService;-><init>()V

    const/4 v0, 0x1

    .line 102
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/service/PusherService;->backgroundThread:Ljava/util/concurrent/Executor;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/towbook/mobile/service/PusherService;->requests:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 107
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/towbook/mobile/service/PusherService;->active:Ljava/lang/Boolean;

    .line 110
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/towbook/mobile/service/PusherService;->mIsFetchingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/towbook/mobile/service/PusherService;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 120
    new-instance v0, Lcom/towbook/mobile/service/PusherService$1;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/service/PusherService$1;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    iput-object v0, p0, Lcom/towbook/mobile/service/PusherService;->mServerConn:Landroid/content/ServiceConnection;

    .line 182
    new-instance v0, Lcom/towbook/mobile/service/PusherService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/service/PusherService$LocalBinder;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    iput-object v0, p0, Lcom/towbook/mobile/service/PusherService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/towbook/mobile/service/PusherService;)Lcom/towbook/mobile/service/LocationService;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/towbook/mobile/service/PusherService;->mBoundService:Lcom/towbook/mobile/service/LocationService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/towbook/mobile/service/PusherService;Lcom/towbook/mobile/service/LocationService;)Lcom/towbook/mobile/service/LocationService;
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/towbook/mobile/service/PusherService;->mBoundService:Lcom/towbook/mobile/service/LocationService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/towbook/mobile/service/PusherService;)Ljava/lang/String;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/towbook/mobile/service/PusherService;->mainChannelName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/towbook/mobile/service/PusherService;)Ljava/lang/String;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/towbook/mobile/service/PusherService;->messageChannelName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/towbook/mobile/service/PusherService;)Ljava/lang/String;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/towbook/mobile/service/PusherService;->privateGpsChannelName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/towbook/mobile/service/PusherService;->initPusher(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/towbook/mobile/service/PusherService;->handleDefaultChannel(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/towbook/mobile/service/PusherService;->handleMessagesChannel(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/towbook/mobile/service/PusherService;->handlePrivateGpsChannel(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/towbook/mobile/service/PusherService;Lcom/towbook/mobile/classes/PusherCallData;Ljava/lang/Exception;)V
    .registers 3

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/towbook/mobile/service/PusherService;->updateCallListAfterFetchCallInfoRejection(Lcom/towbook/mobile/classes/PusherCallData;Ljava/lang/Exception;)V

    return-void
.end method

.method private destroyPusher(Lcom/pusher/client/Pusher;)V
    .registers 4

    const-string v0, "PusherService"

    const-string v1, "destroyPusher running..."

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_13

    .line 262
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->backgroundThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/towbook/mobile/service/PusherService$3;

    invoke-direct {v1, p0, p1}, Lcom/towbook/mobile/service/PusherService$3;-><init>(Lcom/towbook/mobile/service/PusherService;Lcom/pusher/client/Pusher;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method private handleDefaultChannel(Landroid/content/Context;)V
    .registers 6

    .line 454
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->pusher:Lcom/pusher/client/Pusher;

    iget-object v1, p0, Lcom/towbook/mobile/service/PusherService;->mainChannelName:Ljava/lang/String;

    new-instance v2, Lcom/towbook/mobile/service/PusherService$8;

    invoke-direct {v2, p0}, Lcom/towbook/mobile/service/PusherService$8;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pusher/client/Pusher;->subscribePrivate(Ljava/lang/String;Lcom/pusher/client/channel/PrivateChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;

    move-result-object v0

    const-string v1, "call_update"

    .line 473
    new-instance v2, Lcom/towbook/mobile/service/PusherService$9;

    invoke-direct {v2, p0, p1}, Lcom/towbook/mobile/service/PusherService$9;-><init>(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string v1, "drivers_update"

    .line 528
    new-instance v2, Lcom/towbook/mobile/service/PusherService$10;

    invoke-direct {v2, p0, p1}, Lcom/towbook/mobile/service/PusherService$10;-><init>(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string v1, "new_chat"

    .line 597
    new-instance v2, Lcom/towbook/mobile/service/PusherService$11;

    invoke-direct {v2, p0}, Lcom/towbook/mobile/service/PusherService$11;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string v1, "driver_truck_update"

    .line 629
    new-instance v2, Lcom/towbook/mobile/service/PusherService$12;

    invoke-direct {v2, p0, p1}, Lcom/towbook/mobile/service/PusherService$12;-><init>(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string v1, "trucks_update"

    .line 668
    new-instance v2, Lcom/towbook/mobile/service/PusherService$13;

    invoke-direct {v2, p0, p1}, Lcom/towbook/mobile/service/PusherService$13;-><init>(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string v1, "call_dispatch_accepted"

    .line 737
    new-instance v2, Lcom/towbook/mobile/service/PusherService$14;

    invoke-direct {v2, p0}, Lcom/towbook/mobile/service/PusherService$14;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string v1, "call_dispatch_rejected"

    .line 764
    new-instance v2, Lcom/towbook/mobile/service/PusherService$15;

    invoke-direct {v2, p0}, Lcom/towbook/mobile/service/PusherService$15;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string v1, "rateItems_update"

    .line 791
    new-instance v2, Lcom/towbook/mobile/service/PusherService$16;

    invoke-direct {v2, p0, p1}, Lcom/towbook/mobile/service/PusherService$16;-><init>(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string v1, "accounts_update"

    .line 809
    new-instance v2, Lcom/towbook/mobile/service/PusherService$17;

    invoke-direct {v2, p0, p1}, Lcom/towbook/mobile/service/PusherService$17;-><init>(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string v1, "call_modify"

    .line 827
    new-instance v2, Lcom/towbook/mobile/service/PusherService$18;

    invoke-direct {v2, p0, p1}, Lcom/towbook/mobile/service/PusherService$18;-><init>(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string v1, "location_update"

    .line 855
    new-instance v2, Lcom/towbook/mobile/service/PusherService$19;

    invoke-direct {v2, p0}, Lcom/towbook/mobile/service/PusherService$19;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    .line 903
    new-instance v1, Lcom/towbook/mobile/adapter/DBAdapter;

    invoke-virtual {p0}, Lcom/towbook/mobile/service/PusherService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/towbook/mobile/adapter/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/towbook/mobile/service/PusherService;->dbAdapter:Lcom/towbook/mobile/adapter/DBAdapter;

    const-string v1, "call_request"

    .line 906
    new-instance v2, Lcom/towbook/mobile/service/PusherService$20;

    invoke-direct {v2, p0, p1}, Lcom/towbook/mobile/service/PusherService$20;-><init>(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string v1, "callRequest_statusChanged"

    .line 936
    new-instance v2, Lcom/towbook/mobile/service/PusherService$21;

    invoke-direct {v2, p0, p1}, Lcom/towbook/mobile/service/PusherService$21;-><init>(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string p1, "sticker_update"

    .line 970
    new-instance v1, Lcom/towbook/mobile/service/PusherService$22;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/service/PusherService$22;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    invoke-interface {v0, p1, v1}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string p1, "user_checkin"

    .line 999
    new-instance v1, Lcom/towbook/mobile/service/PusherService$23;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/service/PusherService$23;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    invoke-interface {v0, p1, v1}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string p1, "user_checkout"

    .line 1020
    new-instance v1, Lcom/towbook/mobile/service/PusherService$24;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/service/PusherService$24;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    invoke-interface {v0, p1, v1}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    return-void
.end method

.method private handleMessagesChannel(Landroid/content/Context;)V
    .registers 6

    .line 375
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->pusher:Lcom/pusher/client/Pusher;

    iget-object v1, p0, Lcom/towbook/mobile/service/PusherService;->messageChannelName:Ljava/lang/String;

    new-instance v2, Lcom/towbook/mobile/service/PusherService$5;

    invoke-direct {v2, p0}, Lcom/towbook/mobile/service/PusherService$5;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pusher/client/Pusher;->subscribePrivate(Ljava/lang/String;Lcom/pusher/client/channel/PrivateChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;

    move-result-object v0

    const-string v1, "new_message"

    .line 393
    new-instance v2, Lcom/towbook/mobile/service/PusherService$6;

    invoke-direct {v2, p0}, Lcom/towbook/mobile/service/PusherService$6;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    const-string v1, "message_read"

    .line 424
    new-instance v2, Lcom/towbook/mobile/service/PusherService$7;

    invoke-direct {v2, p0, p1}, Lcom/towbook/mobile/service/PusherService$7;-><init>(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    return-void
.end method

.method private handlePrivateGpsChannel(Landroid/content/Context;)V
    .registers 6

    .line 1070
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->pusher:Lcom/pusher/client/Pusher;

    iget-object v1, p0, Lcom/towbook/mobile/service/PusherService;->privateGpsChannelName:Ljava/lang/String;

    new-instance v2, Lcom/towbook/mobile/service/PusherService$25;

    invoke-direct {v2, p0}, Lcom/towbook/mobile/service/PusherService$25;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pusher/client/Pusher;->subscribePrivate(Ljava/lang/String;Lcom/pusher/client/channel/PrivateChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;

    move-result-object v0

    const-string v1, "user_location_updated"

    .line 1089
    new-instance v2, Lcom/towbook/mobile/service/PusherService$26;

    invoke-direct {v2, p0, p1}, Lcom/towbook/mobile/service/PusherService$26;-><init>(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/channel/Channel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    return-void
.end method

.method private handlePusherInitialization()V
    .registers 3

    const-string v0, "PusherService"

    const-string v1, "handlePusherInitialization running..."

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->backgroundThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/towbook/mobile/service/PusherService$4;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/service/PusherService$4;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static handleServiceStartup(Landroid/content/Context;)V
    .registers 3

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/service/PusherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1b

    .line 142
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/service/PusherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1b
    return-void
.end method

.method private initPusher(Landroid/content/Context;)V
    .registers 5

    const-string v0, "PusherService"

    const-string v1, "initPusher running..."

    .line 345
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 348
    invoke-static {p1}, Lcom/towbook/mobile/authenticator/AccountUtils;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 350
    new-instance v2, Lcom/towbook/mobile/authenticator/TowbookAccount;

    invoke-direct {v2, v1, v0, p1}, Lcom/towbook/mobile/authenticator/TowbookAccount;-><init>(Landroid/accounts/Account;Landroid/accounts/AccountManager;Landroid/content/Context;)V

    .line 351
    invoke-virtual {v2}, Lcom/towbook/mobile/authenticator/TowbookAccount;->getAuthToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_25

    const-string p1, "PusherService"

    const-string v0, "initPusher: authentication token is null. stopping service and returning."

    .line 354
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0}, Lcom/towbook/mobile/service/PusherService;->stopSelf()V

    return-void

    .line 359
    :cond_25
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->pusher:Lcom/pusher/client/Pusher;

    if-nez v0, :cond_5a

    .line 360
    new-instance v0, Lcom/pusher/client/util/HttpAuthorizer;

    const-string v1, "https://api.towbook.com/pusher"

    invoke-direct {v0, v1}, Lcom/pusher/client/util/HttpAuthorizer;-><init>(Ljava/lang/String;)V

    .line 361
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "X-Api-Token"

    .line 362
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-virtual {v0, v1}, Lcom/pusher/client/util/HttpAuthorizer;->setHeaders(Ljava/util/Map;)V

    .line 365
    new-instance p1, Lcom/pusher/client/PusherOptions;

    invoke-direct {p1}, Lcom/pusher/client/PusherOptions;-><init>()V

    invoke-virtual {p1, v0}, Lcom/pusher/client/PusherOptions;->setAuthorizer(Lcom/pusher/client/Authorizer;)Lcom/pusher/client/PusherOptions;

    move-result-object p1

    .line 367
    new-instance v0, Lcom/pusher/client/Pusher;

    const-string v1, "00d0fb70749a0a4fd6f9"

    invoke-direct {v0, v1, p1}, Lcom/pusher/client/Pusher;-><init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)V

    iput-object v0, p0, Lcom/towbook/mobile/service/PusherService;->pusher:Lcom/pusher/client/Pusher;

    .line 368
    iget-object p1, p0, Lcom/towbook/mobile/service/PusherService;->pusher:Lcom/pusher/client/Pusher;

    invoke-virtual {p1}, Lcom/pusher/client/Pusher;->getConnection()Lcom/pusher/client/connection/Connection;

    move-result-object p1

    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->ALL:Lcom/pusher/client/connection/ConnectionState;

    invoke-interface {p1, v0, p0}, Lcom/pusher/client/connection/Connection;->bind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionEventListener;)V

    .line 371
    :cond_5a
    iget-object p1, p0, Lcom/towbook/mobile/service/PusherService;->pusher:Lcom/pusher/client/Pusher;

    invoke-virtual {p1}, Lcom/pusher/client/Pusher;->connect()V

    return-void
.end method

.method public static isMyPusherServiceRunning(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "activity"

    .line 329
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 330
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

    .line 331
    const-class v1, Lcom/towbook/mobile/service/PusherService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "PusherService"

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service is running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/towbook/mobile/service/PusherService;

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

.method static final synthetic lambda$updateCallListAfterFetchCallInfoRejection$0$PusherService(Lcom/towbook/mobile/classes/PusherCallData;Lcom/towbook/api/Call;)Z
    .registers 2

    .line 1048
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getId()I

    move-result p1

    invoke-virtual {p0}, Lcom/towbook/mobile/classes/PusherCallData;->getCallId()I

    move-result p0

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static start(Landroid/content/Context;)V
    .registers 3

    const-string v0, "PusherService"

    const-string v1, "Pusher Service Started!"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {p0}, Lcom/towbook/mobile/service/PusherService;->handleServiceStartup(Landroid/content/Context;)V

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .registers 3

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/service/PusherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private updateCallListAfterFetchCallInfoRejection(Lcom/towbook/mobile/classes/PusherCallData;Ljava/lang/Exception;)V
    .registers 6

    .line 1044
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "error code: 404:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_86

    .line 1045
    invoke-virtual {p1}, Lcom/towbook/mobile/classes/PusherCallData;->getCallId()I

    move-result p2

    invoke-static {p0, p2}, Lcom/towbook/utils/AppUtils;->sendUnauthorizedCallBroadcast(Landroid/content/Context;I)V

    .line 1047
    sget-object p2, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-static {p2}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/towbook/mobile/service/PusherService$$Lambda$0;

    invoke-direct {v0, p1}, Lcom/towbook/mobile/service/PusherService$$Lambda$0;-><init>(Lcom/towbook/mobile/classes/PusherCallData;)V

    .line 1048
    invoke-virtual {p2, v0}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    .line 1049
    invoke-virtual {p1}, Lcom/annimon/stream/Stream;->findFirst()Lcom/annimon/stream/Optional;

    move-result-object p1

    .line 1051
    invoke-virtual {p1}, Lcom/annimon/stream/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_86

    .line 1052
    invoke-virtual {p1}, Lcom/annimon/stream/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/towbook/api/Call;

    .line 1053
    invoke-virtual {p0}, Lcom/towbook/mobile/service/PusherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser(Landroid/content/Context;)Lcom/towbook/api/CurrentUser;

    move-result-object v0

    .line 1054
    new-instance v1, Lcom/towbook/Towbook;

    invoke-virtual {p0}, Lcom/towbook/mobile/service/PusherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/towbook/Towbook;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_86

    .line 1057
    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->getId()I

    move-result v0

    invoke-virtual {v1}, Lcom/towbook/Towbook;->drivers()Lcom/towbook/businessModel/Drivers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/towbook/businessModel/Drivers;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/towbook/utils/AppUtils;->isUserAssignedToCallAsDriver(ILcom/towbook/api/Call;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_86

    .line 1058
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/towbook/mobile/ShowUnassignedCallActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "callId"

    .line 1059
    invoke-virtual {p1}, Lcom/annimon/stream/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Call;

    invoke-virtual {v1}, Lcom/towbook/api/Call;->getId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "callNumber"

    .line 1060
    invoke-virtual {p1}, Lcom/annimon/stream/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/towbook/api/Call;

    invoke-virtual {p1}, Lcom/towbook/api/Call;->getCallNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "action"

    const-string v0, "removed"

    .line 1061
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    invoke-virtual {p0, p2}, Lcom/towbook/mobile/service/PusherService;->startActivity(Landroid/content/Intent;)V

    :cond_86
    return-void
.end method


# virtual methods
.method public getConfig(Landroid/content/Context;)V
    .registers 5

    .line 1125
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->mIsFetchingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1126
    invoke-static {p1}, Lcom/towbook/api/retrofit/TowbookClient;->getInstance(Landroid/content/Context;)Lcom/towbook/api/retrofit/TowbookClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/retrofit/TowbookClient;->getConfigRaw()Lretrofit2/Call;

    move-result-object v0

    const-string v1, "PusherService"

    const-string v2, "Call to getConfig() [PROCESSING]...."

    .line 1128
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    new-instance v1, Lcom/towbook/mobile/service/PusherService$27;

    invoke-direct {v1, p0, p1}, Lcom/towbook/mobile/service/PusherService$27;-><init>(Lcom/towbook/mobile/service/PusherService;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_29

    :cond_22
    const-string p1, "PusherService"

    const-string v0, "Call to getConfig() [SKIPPED]!  (since there is already processing one....)"

    .line 1149
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .line 187
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "service"

    const-string v1, "onBind"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1e

    const-string v0, "service"

    const-string v1, "onBind with extra"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MESSENGER"

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Messenger;

    iput-object p1, p0, Lcom/towbook/mobile/service/PusherService;->outMessenger:Landroid/os/Messenger;

    .line 194
    :cond_1e
    iget-object p1, p0, Lcom/towbook/mobile/service/PusherService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onConnectionStateChange(Lcom/pusher/client/connection/ConnectionStateChange;)V
    .registers 8

    const-string v0, "PusherService"

    const-string v1, "Connection state changed from %s to %s."

    const/4 v2, 0x2

    .line 1155
    new-array v2, v2, [Ljava/lang/Object;

    .line 1156
    invoke-virtual {p1}, Lcom/pusher/client/connection/ConnectionStateChange;->getPreviousState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1157
    invoke-virtual {p1}, Lcom/pusher/client/connection/ConnectionStateChange;->getCurrentState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 1156
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1155
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-virtual {p1}, Lcom/pusher/client/connection/ConnectionStateChange;->getCurrentState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object p1

    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTED:Lcom/pusher/client/connection/ConnectionState;

    invoke-virtual {p1, v0}, Lcom/pusher/client/connection/ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 1160
    iget-object p1, p0, Lcom/towbook/mobile/service/PusherService;->active:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 1162
    invoke-virtual {p0}, Lcom/towbook/mobile/service/PusherService;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/towbook/mobile/classes/CheckNetwork;->isInternetAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4b

    const-string p1, "PusherService"

    const-string v0, "Internet connection available, pusher service is becoming active"

    .line 1163
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object p1, p0, Lcom/towbook/mobile/service/PusherService;->pusher:Lcom/pusher/client/Pusher;

    if-eqz p1, :cond_85

    .line 1165
    iget-object p1, p0, Lcom/towbook/mobile/service/PusherService;->pusher:Lcom/pusher/client/Pusher;

    invoke-virtual {p1}, Lcom/pusher/client/Pusher;->connect()V

    goto :goto_85

    :cond_4b
    const-string p1, "PusherService"

    const-string v0, "No internet connection available, pusher service is no longer active"

    .line 1168
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-virtual {p0}, Lcom/towbook/mobile/service/PusherService;->stopSelf()V

    .line 1170
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/towbook/mobile/service/PusherService;->active:Ljava/lang/Boolean;

    goto :goto_85

    .line 1173
    :cond_5c
    invoke-virtual {p0}, Lcom/towbook/mobile/service/PusherService;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/towbook/mobile/classes/CheckNetwork;->isInternetAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 1174
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/towbook/mobile/service/PusherService;->active:Ljava/lang/Boolean;

    goto :goto_85

    :cond_6d
    const-string p1, "PusherService"

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionStateChange: active == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/towbook/mobile/service/PusherService;->active:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    :goto_85
    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 199
    invoke-super {p0}, Lroboguice/service/RoboService;->onCreate()V

    const-string v0, "PusherService"

    const-string v1, "Creating Towbook Pusher Service"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 208
    invoke-super {p0}, Lroboguice/service/RoboService;->onDestroy()V

    .line 210
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->mBoundService:Lcom/towbook/mobile/service/LocationService;

    if-eqz v0, :cond_18

    const-string v0, "PusherService"

    const-string v1, "Destroying LocationService*"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->mBoundService:Lcom/towbook/mobile/service/LocationService;

    invoke-virtual {v0}, Lcom/towbook/mobile/service/LocationService;->onDestroy()V

    :cond_18
    const-string v0, "PusherService"

    const-string v1, "Destroying Towbook Pusher Service"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 218
    :try_start_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/service/PusherService;->active:Ljava/lang/Boolean;

    .line 219
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->pusher:Lcom/pusher/client/Pusher;

    invoke-direct {p0, v0}, Lcom/towbook/mobile/service/PusherService;->destroyPusher(Lcom/pusher/client/Pusher;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_30
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 6

    const-string p2, "PusherService"

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1b

    .line 1186
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11

    const-string v0, "PusherService"

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    :cond_24
    move-object v3, v2

    :goto_25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v3, 0x1

    if-lt v0, v1, :cond_45

    .line 230
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->notificationFactory:Lcom/towbook/common/NotificationFactory;

    const-string v1, "Push Notification Service is running"

    invoke-virtual {v0, v2, v1}, Lcom/towbook/common/NotificationFactory;->createNotification(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/towbook/mobile/service/PusherService;->startForeground(ILandroid/app/Notification;)V

    :cond_45
    if-eqz p1, :cond_b0

    .line 238
    invoke-virtual {p0}, Lcom/towbook/mobile/service/PusherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/towbook/utils/AppUtils;->getMyAccount(Landroid/content/Context;)Lcom/towbook/api/MyAccount;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Lcom/towbook/mobile/service/PusherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser(Landroid/content/Context;)Lcom/towbook/api/CurrentUser;

    move-result-object v1

    if-eqz v0, :cond_ad

    if-eqz v1, :cond_ad

    const-string v2, "private-TWBK_Client_%s"

    .line 242
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/towbook/api/MyAccount;->getCompanyId()Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/towbook/mobile/service/PusherService;->mainChannelName:Ljava/lang/String;

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/towbook/mobile/service/PusherService;->mainChannelName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/towbook/api/CurrentUser;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-chat"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/towbook/mobile/service/PusherService;->messageChannelName:Ljava/lang/String;

    .line 245
    invoke-virtual {v1}, Lcom/towbook/api/CurrentUser;->isDriver()Z

    move-result v1

    if-nez v1, :cond_a3

    const-string v1, "private-gps-%s"

    .line 246
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/towbook/api/MyAccount;->getCompanyId()Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/service/PusherService;->privateGpsChannelName:Ljava/lang/String;

    .line 249
    :cond_a3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/service/PusherService;->active:Ljava/lang/Boolean;

    .line 250
    invoke-direct {p0}, Lcom/towbook/mobile/service/PusherService;->handlePusherInitialization()V

    goto :goto_b0

    .line 252
    :cond_ad
    invoke-virtual {p0}, Lcom/towbook/mobile/service/PusherService;->stopSelf()V

    .line 256
    :cond_b0
    :goto_b0
    invoke-super {p0, p1, p2, p3}, Lroboguice/service/RoboService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public subscribeToChannel(Ljava/lang/String;)V
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->pusher:Lcom/pusher/client/Pusher;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 152
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->pusher:Lcom/pusher/client/Pusher;

    new-instance v1, Lcom/towbook/mobile/service/PusherService$2;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/service/PusherService$2;-><init>(Lcom/towbook/mobile/service/PusherService;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/pusher/client/Pusher;->subscribePrivate(Ljava/lang/String;Lcom/pusher/client/channel/PrivateChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;

    :cond_13
    return-void
.end method

.method public unsubscribeChannel(Ljava/lang/String;)V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->pusher:Lcom/pusher/client/Pusher;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 171
    iget-object v0, p0, Lcom/towbook/mobile/service/PusherService;->pusher:Lcom/pusher/client/Pusher;

    invoke-virtual {v0, p1}, Lcom/pusher/client/Pusher;->unsubscribe(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
