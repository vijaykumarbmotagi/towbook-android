.class public Lcom/towbook/mobile/service/CallRequestBubbleService;
.super Lroboguice/service/RoboService;
.source "CallRequestBubbleService.java"

# interfaces
.implements Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/towbook/mobile/service/CallRequestBubbleService$MySpringConfig;,
        Lcom/towbook/mobile/service/CallRequestBubbleService$MyScaleSpringListener;,
        Lcom/towbook/mobile/service/CallRequestBubbleService$SingleTapConfirm;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "CallRequestBubble"

.field public static callRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/CallRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mHandler:Landroid/os/Handler;

.field private static mRootLayout:Landroid/widget/RelativeLayout;

.field public static quantity:Landroid/widget/TextView;

.field private static windowManager:Landroid/view/WindowManager;


# instance fields
.field dbAdapter:Lcom/towbook/mobile/adapter/DBAdapter;

.field private dispatchBubble:Lcom/towbook/mobile/classes/DispatchBubble;

.field private gestureDetector:Landroid/view/GestureDetector;

.field final isKitKat:Z

.field private isOpened:Z

.field private mScaleSpring:Lcom/facebook/rebound/Spring;

.field private final mScaleSpringListener:Lcom/towbook/mobile/service/CallRequestBubbleService$MyScaleSpringListener;

.field private final mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

.field private notificationFactory:Lcom/towbook/common/NotificationFactory;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private releasedX:F

.field private releasedY:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 91
    invoke-direct {p0}, Lroboguice/service/RoboService;-><init>()V

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->isKitKat:Z

    .line 78
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    .line 79
    new-instance v0, Lcom/towbook/mobile/service/CallRequestBubbleService$MyScaleSpringListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/towbook/mobile/service/CallRequestBubbleService$MyScaleSpringListener;-><init>(Lcom/towbook/mobile/service/CallRequestBubbleService;Lcom/towbook/mobile/service/CallRequestBubbleService$1;)V

    iput-object v0, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mScaleSpringListener:Lcom/towbook/mobile/service/CallRequestBubbleService$MyScaleSpringListener;

    .line 85
    iput-boolean v1, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->isOpened:Z

    return-void
.end method

.method static synthetic access$200(Lcom/towbook/mobile/service/CallRequestBubbleService;)Landroid/view/GestureDetector;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$300(Lcom/towbook/mobile/service/CallRequestBubbleService;)Lcom/facebook/rebound/Spring;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mScaleSpring:Lcom/facebook/rebound/Spring;

    return-object p0
.end method

.method static synthetic access$400()Landroid/widget/RelativeLayout;
    .registers 1

    .line 66
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mRootLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500()Landroid/view/WindowManager;
    .registers 1

    .line 66
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/towbook/mobile/service/CallRequestBubbleService;)F
    .registers 1

    .line 66
    iget p0, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->releasedX:F

    return p0
.end method

.method static synthetic access$602(Lcom/towbook/mobile/service/CallRequestBubbleService;F)F
    .registers 2

    .line 66
    iput p1, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->releasedX:F

    return p1
.end method

.method static synthetic access$700(Lcom/towbook/mobile/service/CallRequestBubbleService;)F
    .registers 1

    .line 66
    iget p0, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->releasedY:F

    return p0
.end method

.method static synthetic access$702(Lcom/towbook/mobile/service/CallRequestBubbleService;F)F
    .registers 2

    .line 66
    iput p1, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->releasedY:F

    return p1
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .line 66
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/towbook/mobile/service/CallRequestBubbleService;)Lcom/towbook/mobile/classes/DispatchBubble;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->dispatchBubble:Lcom/towbook/mobile/classes/DispatchBubble;

    return-object p0
.end method

.method public static addToQuantity(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/CallRequest;",
            ">;)V"
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->quantity:Landroid/widget/TextView;

    if-eqz v0, :cond_bf

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_69

    const/4 v1, 0x0

    .line 145
    :goto_12
    sget-object v3, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_58

    const/4 v3, 0x0

    .line 146
    :goto_1b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_55

    .line 147
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/towbook/api/CallRequest;

    invoke-virtual {v4}, Lcom/towbook/api/CallRequest;->getCallRequestId()I

    move-result v4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/towbook/api/CallRequest;

    invoke-virtual {v5}, Lcom/towbook/api/CallRequest;->getCallRequestId()I

    move-result v5

    if-ne v4, v5, :cond_3f

    .line 148
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 149
    :cond_3f
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/towbook/api/CallRequest;

    invoke-virtual {v4}, Lcom/towbook/api/CallRequest;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 150
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_58
    const/4 v1, 0x0

    .line 154
    :goto_59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_69

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 159
    :cond_69
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mRootLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090550

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->quantity:Landroid/widget/TextView;

    .line 162
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7a
    :goto_7a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/CallRequest;

    .line 163
    invoke-virtual {v0}, Lcom/towbook/api/CallRequest;->getCallRequestId()I

    move-result v1

    invoke-static {v1}, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequestExits(I)Z

    move-result v1

    if-nez v1, :cond_7a

    add-int/lit8 v2, v2, 0x1

    .line 165
    sget-object v1, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    :cond_98
    if-lez v2, :cond_bf

    .line 170
    sget-object p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->quantity:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v2, p0

    .line 173
    sget-object p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->quantity:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_bf
    return-void
.end method

.method private static callRequestExits(I)Z
    .registers 3

    .line 179
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/CallRequest;

    .line 180
    invoke-virtual {v1}, Lcom/towbook/api/CallRequest;->getCallRequestId()I

    move-result v1

    if-ne p0, v1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private handleBubbleInitialization()V
    .registers 12

    .line 264
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_13a

    .line 265
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 267
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_46

    .line 268
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/CallRequest;

    const-string v4, "TowbookDebug:"

    const-string v5, "Is %s before %s?"

    const/4 v6, 0x2

    .line 270
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/towbook/api/CallRequest;->getExpirationDateUtc()Ljava/util/Date;

    move-result-object v7

    aput-object v7, v6, v3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v1}, Lcom/towbook/api/CallRequest;->getExpirationDateUtc()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 275
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 279
    :cond_46
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13a

    .line 280
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mHandler:Landroid/os/Handler;

    .line 282
    invoke-virtual {p0}, Lcom/towbook/mobile/service/CallRequestBubbleService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {v0}, Lcom/towbook/mobile/TowbookApplication;->getConfig()Lcom/towbook/api/ConfigSettings;

    .line 284
    new-instance v0, Lcom/towbook/mobile/adapter/DBAdapter;

    invoke-virtual {p0}, Lcom/towbook/mobile/service/CallRequestBubbleService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/towbook/mobile/adapter/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->dbAdapter:Lcom/towbook/mobile/adapter/DBAdapter;

    const-string v0, "window"

    .line 286
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/service/CallRequestBubbleService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->windowManager:Landroid/view/WindowManager;

    .line 288
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0047

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 290
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mRootLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090550

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->quantity:Landroid/widget/TextView;

    .line 292
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->quantity:Landroid/widget/TextView;

    new-instance v1, Lcom/towbook/mobile/service/CallRequestBubbleService$1;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/service/CallRequestBubbleService$1;-><init>(Lcom/towbook/mobile/service/CallRequestBubbleService;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 320
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_b1

    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->quantity:Landroid/widget/TextView;

    if-eqz v0, :cond_b1

    .line 321
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->quantity:Landroid/widget/TextView;

    sget-object v1, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_b1
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mRootLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/classes/DispatchBubble;

    iput-object v0, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->dispatchBubble:Lcom/towbook/mobile/classes/DispatchBubble;

    .line 325
    invoke-direct {p0}, Lcom/towbook/mobile/service/CallRequestBubbleService;->setNotiImage()V

    const/16 v0, 0x7d2

    .line 329
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v1, v5, :cond_ce

    const/16 v0, 0x7f6

    const/16 v8, 0x7f6

    goto :goto_d0

    :cond_ce
    const/16 v8, 0x7d2

    .line 332
    :goto_d0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v9, 0x8

    const/4 v10, -0x3

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    .line 337
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x5

    .line 339
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 341
    iget-boolean v1, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->isKitKat:Z

    if-eqz v1, :cond_105

    .line 342
    invoke-virtual {p0}, Lcom/towbook/mobile/service/CallRequestBubbleService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v2, [I

    const v5, 0x10102eb

    aput v5, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 345
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 346
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_109

    :cond_105
    const/16 v1, 0x5f

    .line 348
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 352
    :goto_109
    iget-object v1, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {v1}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mScaleSpring:Lcom/facebook/rebound/Spring;

    .line 354
    iget-object v1, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mScaleSpring:Lcom/facebook/rebound/Spring;

    iget-object v2, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mScaleSpringListener:Lcom/towbook/mobile/service/CallRequestBubbleService$MyScaleSpringListener;

    invoke-virtual {v1, v2}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 356
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/towbook/mobile/service/CallRequestBubbleService$SingleTapConfirm;

    invoke-direct {v2, p0, v4}, Lcom/towbook/mobile/service/CallRequestBubbleService$SingleTapConfirm;-><init>(Lcom/towbook/mobile/service/CallRequestBubbleService;Lcom/towbook/mobile/service/CallRequestBubbleService$1;)V

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->gestureDetector:Landroid/view/GestureDetector;

    .line 358
    iget-object v1, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->dispatchBubble:Lcom/towbook/mobile/classes/DispatchBubble;

    new-instance v2, Lcom/towbook/mobile/service/CallRequestBubbleService$2;

    invoke-direct {v2, p0, v0}, Lcom/towbook/mobile/service/CallRequestBubbleService$2;-><init>(Lcom/towbook/mobile/service/CallRequestBubbleService;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1, v2}, Lcom/towbook/mobile/classes/DispatchBubble;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 440
    :try_start_12e
    sget-object v1, Lcom/towbook/mobile/service/CallRequestBubbleService;->windowManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/towbook/mobile/service/CallRequestBubbleService;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_135} :catch_136

    goto :goto_13a

    :catch_136
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13a
    :goto_13a
    return-void
.end method

.method private handleRequestReceived(Landroid/content/Intent;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 488
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 491
    invoke-static {}, Lcom/towbook/mobile/service/CallRequestBubbleService;->hasKitKat()Z

    :cond_9
    return-void
.end method

.method public static hasKitKat()Z
    .registers 2

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isMyCallRequestRunning(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "activity"

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 126
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

    .line 127
    const-class v1, Lcom/towbook/mobile/service/CallRequestBubbleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 128
    sget-object p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service is running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/towbook/mobile/service/CallRequestBubbleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 132
    :cond_4f
    sget-object p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->TAG:Ljava/lang/String;

    const-string v0, "Bubble Service is not running."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static removeFromQuantity(Landroid/content/Context;Lcom/towbook/api/CallRequest;)V
    .registers 4

    .line 223
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->quantity:Landroid/widget/TextView;

    if-eqz v0, :cond_3b

    .line 224
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mRootLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090550

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->quantity:Landroid/widget/TextView;

    .line 226
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->quantity:Landroid/widget/TextView;

    sget-object v1, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p0, :cond_3b

    :try_start_27
    const-string v0, "notification"

    .line 235
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 237
    invoke-virtual {p1}, Lcom/towbook/api/CallRequest;->getCallRequestId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static removeFromQuantity(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/CallRequest;",
            ">;)V"
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->quantity:Landroid/widget/TextView;

    if-eqz v0, :cond_80

    .line 190
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mRootLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090550

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->quantity:Landroid/widget/TextView;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/CallRequest;

    .line 194
    sget-object v2, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/CallRequest;

    .line 195
    invoke-virtual {v1}, Lcom/towbook/api/CallRequest;->getCallRequestId()I

    move-result v4

    invoke-virtual {v3}, Lcom/towbook/api/CallRequest;->getCallRequestId()I

    move-result v5

    if-ne v4, v5, :cond_2c

    .line 196
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 201
    :cond_46
    sget-object p1, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequests:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    if-eqz p0, :cond_71

    :try_start_4d
    const-string p1, "notification"

    .line 208
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_59
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/CallRequest;

    .line 211
    invoke-virtual {v0}, Lcom/towbook/api/CallRequest;->getCallRequestId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_6c} :catch_6d

    goto :goto_59

    :catch_6d
    move-exception p0

    .line 214
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    :cond_71
    sget-object p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->quantity:Landroid/widget/TextView;

    sget-object p1, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequests:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_80
    return-void
.end method

.method private setNotiImage()V
    .registers 4

    .line 449
    invoke-virtual {p0}, Lcom/towbook/mobile/service/CallRequestBubbleService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080254

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 451
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/towbook/mobile/service/CallRequestBubbleService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 453
    iget-object v0, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->dispatchBubble:Lcom/towbook/mobile/classes/DispatchBubble;

    invoke-virtual {v0, v1}, Lcom/towbook/mobile/classes/DispatchBubble;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/CallRequest;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2e

    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2e

    .line 99
    :cond_9
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->TAG:Ljava/lang/String;

    const-string v1, "Starting Bubble Service!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sput-object p1, Lcom/towbook/mobile/service/CallRequestBubbleService;->callRequests:Ljava/util/ArrayList;

    .line 102
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_23

    .line 103
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/towbook/mobile/service/CallRequestBubbleService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3f

    .line 105
    :cond_23
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/towbook/mobile/service/CallRequestBubbleService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3f

    .line 96
    :cond_2e
    :goto_2e
    sget-object p1, Lcom/towbook/mobile/service/CallRequestBubbleService;->TAG:Ljava/lang/String;

    const-string v0, "Stopping Bubble Service!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/towbook/mobile/service/CallRequestBubbleService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_3f
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .registers 3

    .line 111
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->TAG:Ljava/lang/String;

    const-string v1, "Stopping Bubble Service!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mRootLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1d

    .line 115
    :try_start_b
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->windowManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/towbook/mobile/service/CallRequestBubbleService;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_1d

    :catch_13
    move-exception v0

    const-string v1, "Towbook Bubble Service"

    .line 118
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1d
    :goto_1d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/service/CallRequestBubbleService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .line 474
    invoke-virtual {p0}, Lcom/towbook/mobile/service/CallRequestBubbleService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/towbook/mobile/service/CallRequestBubbleService;->stop(Landroid/content/Context;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 4

    .line 253
    invoke-super {p0}, Lroboguice/service/RoboService;->onCreate()V

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1a

    .line 256
    iget-object v0, p0, Lcom/towbook/mobile/service/CallRequestBubbleService;->notificationFactory:Lcom/towbook/common/NotificationFactory;

    const/4 v1, 0x0

    const-string v2, "Call Request Service is running"

    invoke-virtual {v0, v1, v2}, Lcom/towbook/common/NotificationFactory;->createNotification(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 257
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/towbook/mobile/service/CallRequestBubbleService;->startForeground(ILandroid/app/Notification;)V

    .line 260
    :cond_1a
    invoke-direct {p0}, Lcom/towbook/mobile/service/CallRequestBubbleService;->handleBubbleInitialization()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 458
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->mRootLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    .line 460
    :try_start_4
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->windowManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/towbook/mobile/service/CallRequestBubbleService;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_b

    .line 465
    :catch_b
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_15

    const/4 v0, 0x1

    .line 466
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/service/CallRequestBubbleService;->stopForeground(Z)V

    .line 469
    :cond_15
    sget-object v0, Lcom/towbook/mobile/service/CallRequestBubbleService;->TAG:Ljava/lang/String;

    const-string v1, "BUBBLE SERVICE ON DESTROY"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-super {p0}, Lroboguice/service/RoboService;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 p2, 0x6f

    if-ne p1, p2, :cond_7

    .line 505
    invoke-direct {p0}, Lcom/towbook/mobile/service/CallRequestBubbleService;->handleBubbleInitialization()V

    :cond_7
    return-void
.end method

.method public onTimeSet(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;II)V
    .registers 4

    return-void
.end method
