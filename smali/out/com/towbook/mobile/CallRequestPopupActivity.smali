.class public Lcom/towbook/mobile/CallRequestPopupActivity;
.super Lcom/towbook/mobile/BaseActivity;
.source "CallRequestPopupActivity.java"

# interfaces
.implements Lcom/towbook/mobile/CallRequestPopupFragment$RequestPopupButtonsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DELETE:I = 0x1

.field private static final DIALOG_LOADING:I = 0x4

.field private static final DIALOG_PRESET_MSG:I = 0x3

.field private static final DIALOG_QUICKREPLY:I = 0x2

.field private static TAG:Ljava/lang/String; = "CallRequestPopupActivity"


# instance fields
.field public active:Z

.field private callRequestPagerAdapter:Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;

.field private callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

.field private closeButton:Lcom/towbook/mobile/classes/ExitBubble;

.field private final finishReceiver:Landroid/content/BroadcastReceiver;

.field public isInFront:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

.field private privacyMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Lcom/towbook/mobile/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->active:Z

    .line 68
    new-instance v0, Lcom/towbook/mobile/CallRequestPopupActivity$1;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/CallRequestPopupActivity$1;-><init>(Lcom/towbook/mobile/CallRequestPopupActivity;)V

    iput-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/towbook/mobile/CallRequestPopupActivity;)Lcom/towbook/mobile/classes/CallRequestPopupPager;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/towbook/mobile/CallRequestPopupActivity;)Lcom/towbook/mobile/classes/ExitBubble;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->closeButton:Lcom/towbook/mobile/classes/ExitBubble;

    return-object p0
.end method

.method static synthetic access$200(Lcom/towbook/mobile/CallRequestPopupActivity;)Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPagerAdapter:Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/towbook/mobile/CallRequestPopupActivity;)Lcom/viewpagerindicator/CirclePageIndicator;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/towbook/mobile/CallRequestPopupActivity;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->updateAdapter()V

    return-void
.end method

.method public static getPopupIntent(Landroid/content/Context;Lcom/towbook/api/CallRequest;)Landroid/content/Intent;
    .registers 4

    if-eqz p0, :cond_18

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/CallRequestPopupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10800000

    .line 83
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "request"

    .line 84
    invoke-static {p1}, Lcom/towbook/api/core/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPopupIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/CallRequest;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/CallRequest;

    .line 104
    invoke-virtual {v2}, Lcom/towbook/api/CallRequest;->isExpired()Z

    move-result v3

    if-nez v3, :cond_c

    .line 105
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 109
    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3e

    .line 110
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/towbook/mobile/CallRequestPopupActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10800000

    .line 111
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "requestList"

    .line 112
    invoke-static {v1}, Lcom/towbook/api/core/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    :cond_3e
    return-object v0

    :cond_3f
    return-object v0
.end method

.method private initializeRequestsAndWake(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, p1, v0}, Lcom/towbook/mobile/CallRequestPopupActivity;->initializeRequestsAndWake(Landroid/os/Bundle;Z)V

    return-void
.end method

.method private initializeRequestsAndWake(Landroid/os/Bundle;Z)V
    .registers 4

    const-string p2, "requestList"

    .line 222
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/towbook/mobile/CallRequestPopupActivity$5;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/CallRequestPopupActivity$5;-><init>(Lcom/towbook/mobile/CallRequestPopupActivity;)V

    .line 223
    invoke-virtual {v0}, Lcom/towbook/mobile/CallRequestPopupActivity$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 222
    invoke-static {p2, v0}, Lcom/towbook/api/core/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    const-string v0, "request"

    .line 224
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/towbook/api/CallRequest;

    invoke-static {p1, v0}, Lcom/towbook/api/core/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/towbook/api/CallRequest;

    if-eqz p1, :cond_48

    .line 228
    iget-object p2, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {p2, p1}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->requestsContain(Lcom/towbook/api/CallRequest;)Z

    move-result p2

    if-nez p2, :cond_56

    .line 229
    invoke-virtual {p1}, Lcom/towbook/api/CallRequest;->isExpired()Z

    move-result p2

    if-nez p2, :cond_56

    .line 230
    iget-object p2, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {p2, p1}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->addRequest(Lcom/towbook/api/CallRequest;)V

    .line 232
    iget-object p1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPagerAdapter:Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;

    monitor-enter p1

    .line 233
    :try_start_3b
    iget-object p2, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPagerAdapter:Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;

    invoke-virtual {p2}, Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;->notifyDataSetChanged()V

    .line 234
    monitor-exit p1
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_45

    .line 235
    invoke-direct {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->wakeApp()V

    goto :goto_56

    :catchall_45
    move-exception p2

    .line 234
    :try_start_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p2

    :cond_48
    if-eqz p2, :cond_53

    .line 240
    iget-object p1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {p1, p2}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->addUniqueRequests(Ljava/util/ArrayList;)V

    .line 241
    invoke-direct {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->wakeApp()V

    goto :goto_56

    .line 243
    :cond_53
    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->finish()V

    :cond_56
    :goto_56
    return-void
.end method

.method private myFinish()V
    .registers 1

    .line 368
    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->finish()V

    return-void
.end method

.method private refreshViews()V
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallRequestPopupActivity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method private removeActiveRequest()V
    .registers 3

    .line 355
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->removeActiveRequest()I

    move-result v0

    .line 356
    iget-object v1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    sget v1, Lcom/towbook/mobile/classes/CallRequestPopupPager;->STATUS_NO_MESSAGES_REMAINING:I

    if-ne v0, v1, :cond_f

    .line 357
    invoke-direct {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->myFinish()V

    :cond_f
    return-void
.end method

.method private removeExpiredRequests()V
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->removeExpiredRequests()V

    return-void
.end method

.method private setPrivacy(I)V
    .registers 2

    .line 565
    iput p1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->privacyMode:I

    .line 567
    invoke-direct {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->refreshViews()V

    return-void
.end method

.method private setupViews()V
    .registers 4

    const v0, 0x7f0902e1

    .line 159
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallRequestPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/classes/CallRequestPopupPager;

    iput-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    .line 160
    new-instance v0, Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;

    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;-><init>(Lcom/towbook/mobile/CallRequestPopupActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPagerAdapter:Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;

    .line 161
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    iget-object v1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPagerAdapter:Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v0, 0x7f090219

    .line 162
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallRequestPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 163
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 164
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 166
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    iget-object v1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->pagerIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v1}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->setIndicator(Lcom/viewpagerindicator/CirclePageIndicator;)V

    .line 167
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    new-instance v1, Lcom/towbook/mobile/CallRequestPopupActivity$2;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/CallRequestPopupActivity$2;-><init>(Lcom/towbook/mobile/CallRequestPopupActivity;)V

    invoke-virtual {v0, v1}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->setGestureListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    const v0, 0x7f090110

    .line 174
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallRequestPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/classes/ExitBubble;

    iput-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->closeButton:Lcom/towbook/mobile/classes/ExitBubble;

    .line 175
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->closeButton:Lcom/towbook/mobile/classes/ExitBubble;

    new-instance v1, Lcom/towbook/mobile/CallRequestPopupActivity$3;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/CallRequestPopupActivity$3;-><init>(Lcom/towbook/mobile/CallRequestPopupActivity;)V

    invoke-virtual {v0, v1}, Lcom/towbook/mobile/classes/ExitBubble;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallRequestPopupActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    new-instance v1, Lcom/towbook/mobile/CallRequestPopupActivity$4;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/CallRequestPopupActivity$4;-><init>(Lcom/towbook/mobile/CallRequestPopupActivity;)V

    invoke-virtual {v0, v1}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->setOnRequestCountChanged(Lcom/towbook/mobile/classes/CallRequestPopupPager$RequestCountChanged;)V

    .line 205
    invoke-direct {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->refreshViews()V

    return-void
.end method

.method private updateAdapter()V
    .registers 3

    .line 739
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequests()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 740
    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->finish()V

    goto :goto_26

    .line 742
    :cond_10
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 744
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPagerAdapter:Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;

    monitor-enter v0

    .line 745
    :try_start_19
    iget-object v1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPagerAdapter:Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;

    invoke-virtual {v1}, Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;->notifyDataSetChanged()V

    .line 746
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_27

    .line 748
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    iget-object v1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPagerAdapter:Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :goto_26
    return-void

    :catchall_27
    move-exception v1

    .line 746
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private wakeApp()V
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->shouldNotify()Lcom/towbook/api/CallRequest;

    return-void
.end method


# virtual methods
.method public acceptWithEta(IILjava/lang/String;ILjava/lang/Integer;)V
    .registers 17

    .line 571
    new-instance v10, Lcom/towbook/mobile/CallRequestPopupActivity$6;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move v8, p2

    move v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/towbook/mobile/CallRequestPopupActivity$6;-><init>(Lcom/towbook/mobile/CallRequestPopupActivity;Landroid/content/Context;IILjava/lang/String;ILjava/lang/Integer;II)V

    .line 611
    invoke-virtual {v10}, Lcom/towbook/mobile/CallRequestPopupActivity$6;->start()Lcom/towbook/mobile/task/CallRequestAcceptTask;

    return-void
.end method

.method public finish()V
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequests()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequests()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_43

    .line 431
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_32

    .line 432
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 433
    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v1}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequests()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/towbook/mobile/service/CallRequestBubbleService;->start(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_3f

    .line 435
    :cond_32
    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v1}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequests()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/towbook/mobile/service/CallRequestBubbleService;->start(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    .line 438
    invoke-static {v0}, Lcom/towbook/mobile/TowbookApplication;->setCallRequestActivity(Lcom/towbook/mobile/CallRequestPopupActivity;)V

    .line 441
    :cond_43
    invoke-super {p0}, Lcom/towbook/mobile/BaseActivity;->finish()V

    return-void
.end method

.method public getCache()Landroid/support/v4/util/LruCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LruCache<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 509
    invoke-super {p0, p1, p2, p3}, Lcom/towbook/mobile/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onButtonClicked(I)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 540
    invoke-super {p0, p1}, Lcom/towbook/mobile/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    .line 557
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 560
    invoke-super {p0, p1}, Lcom/towbook/mobile/BaseActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 128
    invoke-super {p0, p1}, Lcom/towbook/mobile/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/towbook/utils/AppUtils;->isDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    const v0, 0x7f0b0045

    .line 131
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallRequestPopupActivity;->setContentView(I)V

    goto :goto_1a

    :cond_14
    const v0, 0x7f0b0046

    .line 133
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallRequestPopupActivity;->setContentView(I)V

    .line 136
    :goto_1a
    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0602cd

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 137
    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 138
    invoke-direct {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->setupViews()V

    if-nez p1, :cond_3c

    .line 141
    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/towbook/mobile/CallRequestPopupActivity;->initializeRequestsAndWake(Landroid/os/Bundle;)V

    goto :goto_3f

    .line 143
    :cond_3c
    invoke-direct {p0, p1}, Lcom/towbook/mobile/CallRequestPopupActivity;->initializeRequestsAndWake(Landroid/os/Bundle;)V

    .line 146
    :goto_3f
    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/towbook/mobile/service/CallRequestBubbleService;->isMyCallRequestRunning(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 149
    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/towbook/mobile/service/CallRequestBubbleService;->stop(Landroid/content/Context;)V

    .line 151
    :cond_50
    iget-object p1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "finishPagerPopup"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/towbook/mobile/CallRequestPopupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    invoke-static {p0}, Lcom/towbook/mobile/TowbookApplication;->setCallRequestActivity(Lcom/towbook/mobile/CallRequestPopupActivity;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    .line 549
    invoke-super {p0, p1, p2, p3}, Lcom/towbook/mobile/BaseActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3

    const v0, 0x1080029

    packed-switch p1, :pswitch_data_40

    const/4 p1, 0x0

    return-object p1

    .line 487
    :pswitch_8
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 488
    iget-object p1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 489
    iget-object p1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 490
    iget-object p1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1

    .line 478
    :pswitch_1d
    invoke-static {p0}, Lcom/towbook/utils/ViewUtils;->getAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 479
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 467
    :pswitch_2a
    invoke-static {p0}, Lcom/towbook/utils/ViewUtils;->getAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 468
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 459
    :pswitch_37
    invoke-static {p0}, Lcom/towbook/utils/ViewUtils;->getAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2a
        :pswitch_1d
        :pswitch_8
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .line 423
    invoke-super {p0}, Lcom/towbook/mobile/BaseActivity;->onDestroy()V

    .line 424
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallRequestPopupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 425
    iput-boolean v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->active:Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 379
    invoke-super {p0, p1}, Lcom/towbook/mobile/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/towbook/mobile/CallRequestPopupActivity;->setIntent(Landroid/content/Intent;)V

    .line 385
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/towbook/mobile/CallRequestPopupActivity;->initializeRequestsAndWake(Landroid/os/Bundle;Z)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 409
    invoke-super {p0}, Lcom/towbook/mobile/BaseActivity;->onPause()V

    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->isInFront:Z

    const/4 v0, 0x0

    .line 412
    invoke-static {v0}, Lcom/towbook/mobile/TowbookApplication;->setCallRequestActivity(Lcom/towbook/mobile/CallRequestPopupActivity;)V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3

    .line 497
    invoke-super {p0, p1, p2}, Lcom/towbook/mobile/BaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 535
    invoke-super {p0, p1}, Lcom/towbook/mobile/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 396
    invoke-super {p0}, Lcom/towbook/mobile/BaseActivity;->onResume()V

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->isInFront:Z

    .line 399
    invoke-static {p0}, Lcom/towbook/mobile/TowbookApplication;->setCallRequestActivity(Lcom/towbook/mobile/CallRequestPopupActivity;)V

    .line 400
    invoke-direct {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->removeExpiredRequests()V

    .line 402
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequests()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v0}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequests()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_27

    .line 403
    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->finish()V

    :cond_27
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 527
    invoke-super {p0, p1}, Lcom/towbook/mobile/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 390
    invoke-super {p0}, Lcom/towbook/mobile/BaseActivity;->onStart()V

    const/4 v0, 0x1

    .line 391
    iput-boolean v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->active:Z

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 417
    invoke-super {p0}, Lcom/towbook/mobile/BaseActivity;->onStop()V

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->active:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 514
    invoke-super {p0, p1}, Lcom/towbook/mobile/BaseActivity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public rejectWithReason(II)V
    .registers 11

    .line 615
    new-instance v7, Lcom/towbook/mobile/CallRequestPopupActivity$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/towbook/mobile/CallRequestPopupActivity$7;-><init>(Lcom/towbook/mobile/CallRequestPopupActivity;Landroid/content/Context;IIII)V

    .line 660
    invoke-virtual {v7}, Lcom/towbook/mobile/CallRequestPopupActivity$7;->start()Lcom/towbook/mobile/task/CallRequestRejectTask;

    return-void
.end method

.method public removeCallRequest(I)V
    .registers 7

    const-string v0, ""

    const-string v1, ""

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 263
    :goto_f
    iget-object v4, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v4}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequests()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_35

    .line 264
    iget-object v4, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v4, v2}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequest(I)Lcom/towbook/api/CallRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/towbook/api/CallRequest;->getCallRequestId()I

    move-result v4

    if-ne v4, p1, :cond_30

    .line 265
    iget-object v4, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v4, v2}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequest(I)Lcom/towbook/api/CallRequest;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 270
    :cond_35
    :goto_35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_49

    .line 271
    iget-object p1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {p1, v3}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->removeRequestByIndex(I)I

    .line 272
    iget-object p1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    const/4 v2, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->setCurrentItem(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 275
    :cond_49
    iget-object p1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPagerAdapter:Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;

    monitor-enter p1

    .line 276
    :try_start_4c
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPagerAdapter:Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;

    invoke-virtual {v0}, Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;->notifyDataSetChanged()V

    .line 277
    monitor-exit p1
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_62

    .line 279
    iget-object p1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {p1}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequests()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_61

    .line 280
    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->finish()V

    :cond_61
    return-void

    :catchall_62
    move-exception v0

    .line 277
    :try_start_63
    monitor-exit p1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0
.end method

.method public removeCallRequest(Lcom/towbook/api/CallRequest;)V
    .registers 8

    .line 284
    iget-boolean v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->active:Z

    if-eqz v0, :cond_71

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 288
    :goto_c
    iget-object v4, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v4}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequests()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_36

    .line 289
    iget-object v4, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v4, v2}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequest(I)Lcom/towbook/api/CallRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/towbook/api/CallRequest;->getCallRequestId()I

    move-result v4

    invoke-virtual {p1}, Lcom/towbook/api/CallRequest;->getCallRequestId()I

    move-result v5

    if-ne v4, v5, :cond_31

    .line 290
    iget-object v4, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v4, v2}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequest(I)Lcom/towbook/api/CallRequest;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 295
    :cond_36
    :goto_36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 297
    :try_start_3c
    iget-object v2, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {v2, p1}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->removeRequestById(Lcom/towbook/api/CallRequest;)I

    .line 298
    iget-object v2, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->setCurrentItem(IZ)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v2

    .line 301
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 305
    :cond_4f
    iget-object p1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPagerAdapter:Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;

    monitor-enter p1

    .line 307
    :try_start_52
    iget-object v0, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPagerAdapter:Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;

    invoke-virtual {v0}, Lcom/towbook/mobile/CallRequestPopupActivity$CallRequestPagerAdapter;->notifyDataSetChanged()V
    :try_end_57
    .catch Ljava/lang/IllegalStateException; {:try_start_52 .. :try_end_57} :catch_5a
    .catchall {:try_start_52 .. :try_end_57} :catchall_58

    goto :goto_5e

    :catchall_58
    move-exception v0

    goto :goto_6f

    :catch_5a
    move-exception v0

    .line 310
    :try_start_5b
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 312
    :goto_5e
    monitor-exit p1
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_58

    .line 314
    iget-object p1, p0, Lcom/towbook/mobile/CallRequestPopupActivity;->callRequestPopupPager:Lcom/towbook/mobile/classes/CallRequestPopupPager;

    invoke-virtual {p1}, Lcom/towbook/mobile/classes/CallRequestPopupPager;->getRequests()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_71

    .line 315
    invoke-virtual {p0}, Lcom/towbook/mobile/CallRequestPopupActivity;->finish()V

    goto :goto_71

    .line 312
    :goto_6f
    :try_start_6f
    monitor-exit p1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_58

    throw v0

    :cond_71
    :goto_71
    return-void
.end method

.method public requestPhoneCall(I)V
    .registers 6

    .line 665
    invoke-static {p0}, Lcom/towbook/utils/ViewUtils;->getAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Request Phone Call"

    .line 668
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Are you sure?"

    .line 672
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 673
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Yes"

    new-instance v3, Lcom/towbook/mobile/CallRequestPopupActivity$9;

    invoke-direct {v3, p0, p1}, Lcom/towbook/mobile/CallRequestPopupActivity$9;-><init>(Lcom/towbook/mobile/CallRequestPopupActivity;I)V

    .line 674
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "No"

    new-instance v2, Lcom/towbook/mobile/CallRequestPopupActivity$8;

    invoke-direct {v2, p0}, Lcom/towbook/mobile/CallRequestPopupActivity$8;-><init>(Lcom/towbook/mobile/CallRequestPopupActivity;)V

    .line 725
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 732
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 735
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
