.class public Lcom/towbook/mobile/CallListActivity;
.super Lcom/towbook/mobile/BaseSlidingActivity;
.source "CallListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/towbook/mobile/CompanyPickerDialog$CompanyPickerDialogListener;
.implements Landroid/support/v7/app/ActionBar$OnNavigationListener;
.implements Lcom/towbook/mobile/StatusEditorDialog$StatusEditorListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/support/v7/app/ActionBar$TabListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/towbook/mobile/CallListActivity$DataSaverChangedBroadcastReceiver;,
        Lcom/towbook/mobile/CallListActivity$PusherActionReceiver;,
        Lcom/towbook/mobile/CallListActivity$AppSectionsPagerAdapter;
    }
.end annotation


# static fields
.field public static final CURRENT_CALL_FILTER:Ljava/lang/String; = "current_call_filter"

.field private static final CURRENT_TAB:Ljava/lang/String; = "tab_calls_current"

.field private static PERMISSION_REQUEST:I = 0x6f

.field private static final REQUEST_CAMERA_PERMISSION:I = 0x1b58

.field public static final TAB_ACTIVE:Ljava/lang/String; = "tab_active"

.field public static final TAB_CANCELLED:Ljava/lang/String; = "tab_cancelled"

.field public static final TAB_COMPLETED:Ljava/lang/String; = "tab_completed"

.field public static final TAB_SCHEDULED:Ljava/lang/String; = "tab_scheduled"

.field public static final TAB_WAITING:Ljava/lang/String; = "tab_waiting"

.field private static final TAG:Ljava/lang/String; = "CallListActivity"

.field public static lastSelectedCompanyId:I = -0x1

.field private static limit:I = 0x3

.field public static listResponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/Call;",
            ">;"
        }
    .end annotation
.end field

.field public static listResponseLastRefresh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/towbook/api/Call;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected contextProvider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private mActionbar:Landroid/support/v7/app/ActionBar;

.field private mActiveTab:Landroid/support/v7/app/ActionBar$Tab;

.field private mAppSectionsPagerAdapter:Lcom/towbook/mobile/CallListActivity$AppSectionsPagerAdapter;

.field private mCancelledTab:Landroid/support/v7/app/ActionBar$Tab;

.field private mCompleteTab:Landroid/support/v7/app/ActionBar$Tab;

.field private mComposedFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

.field private mComposedNewCallFab:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field private mComposedNewOnSceneCallFab:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mConfigs:Lcom/towbook/api/ConfigSettings;

.field private mCurrentCompanyId:Ljava/lang/Integer;

.field private mDataSaverChangedBroadcastReceiver:Lcom/towbook/mobile/CallListActivity$DataSaverChangedBroadcastReceiver;

.field private mForwardedCallId:I

.field private mGeofenceHandler:Lcom/towbook/classes/geofences/GeofenceHandler;

.field private mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

.field private mHasScheduledCalls:Z

.field private mIsRefreshing:Z

.field private mIsRunning:Ljava/lang/Boolean;

.field private mNewCallFab:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field private mNotificationBar:Landroid/widget/RelativeLayout;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Lcom/towbook/mobile/CallListActivity$PusherActionReceiver;

.field private mScheduledTab:Landroid/support/v7/app/ActionBar$Tab;

.field private mTabCurrent:I

.field private mTowbook:Lcom/towbook/Towbook;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWaitingTab:Landroid/support/v7/app/ActionBar$Tab;

.field private mWasPreviouslyPaused:Z

.field private menuCallFilter:Landroid/view/MenuItem;

.field private menuCompanyFilter:Landroid/view/MenuItem;

.field private menuRefresh:Landroid/view/MenuItem;

.field private searchViewKeyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/towbook/mobile/CallListActivity;->listResponseLastRefresh:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 101
    invoke-direct {p0}, Lcom/towbook/mobile/BaseSlidingActivity;-><init>()V

    const-string v0, ""

    .line 122
    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->searchViewKeyword:Ljava/lang/String;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 127
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mIsRunning:Ljava/lang/Boolean;

    .line 128
    iput-boolean v0, p0, Lcom/towbook/mobile/CallListActivity;->mIsRefreshing:Z

    .line 137
    iput-boolean v0, p0, Lcom/towbook/mobile/CallListActivity;->mHasScheduledCalls:Z

    .line 139
    iput v0, p0, Lcom/towbook/mobile/CallListActivity;->mTabCurrent:I

    .line 140
    iput v0, p0, Lcom/towbook/mobile/CallListActivity;->mForwardedCallId:I

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mWaitingTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 150
    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mActiveTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 151
    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mScheduledTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 152
    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mCompleteTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 153
    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mCancelledTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 155
    new-instance v1, Lcom/towbook/mobile/CallListActivity$DataSaverChangedBroadcastReceiver;

    invoke-direct {v1, p0, v0}, Lcom/towbook/mobile/CallListActivity$DataSaverChangedBroadcastReceiver;-><init>(Lcom/towbook/mobile/CallListActivity;Lcom/towbook/mobile/CallListActivity$1;)V

    iput-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mDataSaverChangedBroadcastReceiver:Lcom/towbook/mobile/CallListActivity$DataSaverChangedBroadcastReceiver;

    .line 167
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private GenDataSub()V
    .registers 5

    .line 1236
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    const/4 v1, 0x1

    if-eqz v0, :cond_38

    .line 1237
    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    if-eqz v0, :cond_2e

    .line 1238
    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Call;

    .line 1239
    invoke-virtual {v1}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v2

    iget-object v3, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    invoke-static {v2, v3}, Lcom/towbook/utils/AppUtils;->setStatus(Lcom/towbook/api/Status;Lcom/towbook/api/ConfigSettings;)V

    .line 1240
    invoke-virtual {v1}, Lcom/towbook/api/Call;->getAccount()Lcom/towbook/api/CallPartialAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    invoke-static {v1, v2}, Lcom/towbook/utils/AppUtils;->setNameAccount(Lcom/towbook/api/ApiItem;Lcom/towbook/api/ConfigSettings;)V

    goto :goto_f

    :cond_2e
    const-string v0, "No calls in list, please refresh."

    .line 1243
    invoke-static {p0, v0, v1}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object v0

    .line 1244
    invoke-virtual {v0}, Lme/drakeet/support/toast/ToastCompat;->show()V

    goto :goto_41

    :cond_38
    const-string v0, "Current configs are null, please re-log in to continue."

    .line 1247
    invoke-static {p0, v0, v1}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object v0

    .line 1248
    invoke-virtual {v0}, Lme/drakeet/support/toast/ToastCompat;->show()V

    :cond_41
    :goto_41
    return-void
.end method

.method static synthetic access$1000(Lcom/towbook/mobile/CallListActivity;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->handleView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/towbook/mobile/CallListActivity;)Landroid/support/v4/view/ViewPager;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/towbook/mobile/CallListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/towbook/mobile/CallListActivity;)Lcom/towbook/mobile/CallListActivity$AppSectionsPagerAdapter;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/towbook/mobile/CallListActivity;->mAppSectionsPagerAdapter:Lcom/towbook/mobile/CallListActivity$AppSectionsPagerAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/towbook/mobile/CallListActivity;)Landroid/support/v7/app/ActionBar;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/towbook/mobile/CallListActivity;)Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/towbook/mobile/CallListActivity;->mHasScheduledCalls:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/towbook/mobile/CallListActivity;)Lcom/towbook/Towbook;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/towbook/mobile/CallListActivity;->mTowbook:Lcom/towbook/Towbook;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/towbook/mobile/CallListActivity;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->handleGeofencesList()V

    return-void
.end method

.method static synthetic access$1700(Lcom/towbook/mobile/CallListActivity;I)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/towbook/mobile/CallListActivity;->updateTabsUi(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/towbook/mobile/CallListActivity;II)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/towbook/mobile/CallListActivity;->handleCallResponse(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/towbook/mobile/CallListActivity;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->refreshCalls()V

    return-void
.end method

.method static synthetic access$302(Lcom/towbook/mobile/CallListActivity;Lcom/towbook/api/ConfigSettings;)Lcom/towbook/api/ConfigSettings;
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    return-object p1
.end method

.method static synthetic access$400(Lcom/towbook/mobile/CallListActivity;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->updateView()V

    return-void
.end method

.method static synthetic access$502(Lcom/towbook/mobile/CallListActivity;Z)Z
    .registers 2

    .line 101
    iput-boolean p1, p0, Lcom/towbook/mobile/CallListActivity;->mIsRefreshing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/towbook/mobile/CallListActivity;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->loadForwardedCall()V

    return-void
.end method

.method static synthetic access$700(Lcom/towbook/mobile/CallListActivity;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->loadCalls()V

    return-void
.end method

.method static synthetic access$800(Lcom/towbook/mobile/CallListActivity;)Lcom/towbook/api/CurrentUser;
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/towbook/mobile/CallListActivity;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->GenDataSub()V

    return-void
.end method

.method private checkoutUser()V
    .registers 5

    .line 685
    new-instance v0, Lcom/towbook/api/UserCheckIn;

    invoke-direct {v0}, Lcom/towbook/api/UserCheckIn;-><init>()V

    .line 686
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/towbook/utils/AppUtils;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 687
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    goto :goto_19

    :cond_14
    const-wide v2, 0x404617527e521577L    # 44.182205

    :goto_19
    invoke-virtual {v0, v2, v3}, Lcom/towbook/api/UserCheckIn;->setLatitude(D)V

    if-eqz v1, :cond_23

    .line 688
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    goto :goto_28

    :cond_23
    const-wide v1, -0x3faadf8fffbce421L    # -84.506836

    :goto_28
    invoke-virtual {v0, v1, v2}, Lcom/towbook/api/UserCheckIn;->setLongitude(D)V

    .line 690
    new-instance v1, Lcom/towbook/mobile/CallListActivity$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/towbook/mobile/CallListActivity$5;-><init>(Lcom/towbook/mobile/CallListActivity;Landroid/content/Context;ZLcom/towbook/api/UserCheckIn;)V

    .line 711
    invoke-virtual {v1}, Lcom/towbook/mobile/CallListActivity$5;->execute()V

    return-void
.end method

.method private fetchCallRequests()V
    .registers 3

    const-string v0, "TowbookDebug:"

    const-string v1, "Attempting to get all call requests now.."

    .line 652
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    new-instance v0, Lcom/towbook/mobile/CallListActivity$4;

    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->contextProvider:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/towbook/mobile/CallListActivity$4;-><init>(Lcom/towbook/mobile/CallListActivity;Landroid/content/Context;)V

    .line 681
    invoke-virtual {v0}, Lcom/towbook/mobile/CallListActivity$4;->execute()V

    return-void
.end method

.method private fetchCalls()V
    .registers 2

    .line 602
    new-instance v0, Lcom/towbook/mobile/CallListActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/towbook/mobile/CallListActivity$3;-><init>(Lcom/towbook/mobile/CallListActivity;Landroid/content/Context;)V

    .line 629
    invoke-virtual {v0}, Lcom/towbook/mobile/CallListActivity$3;->execute()V

    return-void
.end method

.method private filterCalls(Z)V
    .registers 3

    .line 1032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    if-eqz p1, :cond_1f

    .line 1035
    iget-object p1, p0, Lcom/towbook/mobile/CallListActivity;->mNotificationBar:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string p1, "current_call_filter"

    const-string v0, "only_assigned"

    .line 1036
    invoke-static {p1, v0, p0}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 1038
    sget-object p1, Lcom/towbook/mobile/CallListActivity;->listResponseLastRefresh:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/towbook/mobile/CallListActivity;->getAssignedCalls(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    sput-object p1, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    goto :goto_31

    .line 1040
    :cond_1f
    iget-object p1, p0, Lcom/towbook/mobile/CallListActivity;->mNotificationBar:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string p1, "current_call_filter"

    const-string v0, "all"

    .line 1041
    invoke-static {p1, v0, p0}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 1043
    sget-object p1, Lcom/towbook/mobile/CallListActivity;->listResponseLastRefresh:Ljava/util/List;

    sput-object p1, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    .line 1046
    :goto_31
    sget-object p1, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3f

    .line 1047
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->GenDataSub()V

    .line 1048
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->handleView()V

    :cond_3f
    return-void
.end method

.method private filterListResponseByCompanyId(I)V
    .registers 5

    .line 1010
    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponseLastRefresh:Ljava/util/List;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2e

    .line 1012
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    .line 1013
    sput p1, Lcom/towbook/mobile/CallListActivity;->lastSelectedCompanyId:I

    .line 1015
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Call;

    .line 1016
    invoke-virtual {v1}, Lcom/towbook/api/Call;->getCompanyId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_12

    .line 1017
    sget-object v2, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1021
    :cond_2e
    sget-object p1, Lcom/towbook/mobile/CallListActivity;->listResponseLastRefresh:Ljava/util/List;

    sput-object p1, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    .line 1022
    sput v1, Lcom/towbook/mobile/CallListActivity;->lastSelectedCompanyId:I

    .line 1025
    :cond_34
    sget-object p1, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_42

    .line 1026
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->GenDataSub()V

    .line 1027
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->handleView()V

    :cond_42
    return-void
.end method

.method private forwardNotification()V
    .registers 4

    .line 367
    :try_start_0
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "callId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2c

    .line 370
    iput v0, p0, Lcom/towbook/mobile/CallListActivity;->mForwardedCallId:I

    .line 371
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 372
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 373
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading call..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 375
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    return-void
.end method

.method private getCallImpoundLotLocation(Lcom/towbook/api/Call;)Landroid/location/Location;
    .registers 7

    .line 844
    invoke-virtual {p1}, Lcom/towbook/api/Call;->isImpound()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lcom/towbook/api/Call;->getImpoundLotId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 846
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mTowbook:Lcom/towbook/Towbook;

    invoke-virtual {v0}, Lcom/towbook/Towbook;->impoundLots()Lcom/towbook/businessModel/ImpoundLots;

    move-result-object v0

    invoke-virtual {p1}, Lcom/towbook/api/Call;->getImpoundLotId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/towbook/businessModel/ImpoundLots;->getById(I)Lcom/towbook/api/ImpoundLot;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 848
    invoke-virtual {p1}, Lcom/towbook/api/ImpoundLot;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_48

    invoke-virtual {p1}, Lcom/towbook/api/ImpoundLot;->getLongitude()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_48

    .line 849
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p1}, Lcom/towbook/api/ImpoundLot;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 851
    invoke-virtual {p1}, Lcom/towbook/api/ImpoundLot;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    return-object v0

    :cond_48
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCurrentTabIndex()I
    .registers 3

    const-string v0, "tab_calls_current"

    .line 928
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 929
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_12
    iput v0, p0, Lcom/towbook/mobile/CallListActivity;->mTabCurrent:I

    .line 930
    iget v0, p0, Lcom/towbook/mobile/CallListActivity;->mTabCurrent:I

    return v0
.end method

.method private getCurrentUser()Lcom/towbook/api/CurrentUser;
    .registers 2

    .line 1002
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {v0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    return-object v0
.end method

.method private getGeofenceHandler()Lcom/towbook/classes/geofences/GeofenceHandler;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mGeofenceHandler:Lcom/towbook/classes/geofences/GeofenceHandler;

    if-nez v0, :cond_b

    .line 279
    new-instance v0, Lcom/towbook/classes/geofences/GeofenceHandler;

    invoke-direct {v0, p0}, Lcom/towbook/classes/geofences/GeofenceHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mGeofenceHandler:Lcom/towbook/classes/geofences/GeofenceHandler;

    .line 282
    :cond_b
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mGeofenceHandler:Lcom/towbook/classes/geofences/GeofenceHandler;

    return-object v0
.end method

.method private handleCallResponse(II)V
    .registers 5

    .line 1320
    sget-object p2, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    if-eqz p2, :cond_2f

    sget-object p2, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_d

    goto :goto_2f

    .line 1322
    :cond_d
    sget-object p2, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_13
    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Call;

    .line 1323
    invoke-virtual {v0}, Lcom/towbook/api/Call;->getId()I

    move-result v1

    if-ne v1, p1, :cond_13

    .line 1324
    invoke-direct {p0, v0}, Lcom/towbook/mobile/CallListActivity;->setCallResponse(Lcom/towbook/api/Call;)V

    goto :goto_13

    .line 1328
    :cond_29
    sget p1, Lcom/towbook/mobile/CallListActivity;->limit:I

    invoke-direct {p0, p1}, Lcom/towbook/mobile/CallListActivity;->updateTabsUi(I)V

    return-void

    :cond_2f
    :goto_2f
    return-void
.end method

.method private handleGeofence(Lcom/towbook/api/Call;)V
    .registers 21

    .line 754
    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getWaypoints()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 755
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_15

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/CallWaypoint;

    goto :goto_16

    :cond_15
    move-object v3, v1

    :goto_16
    const/4 v4, 0x1

    if-eqz v0, :cond_26

    .line 756
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/towbook/api/CallWaypoint;

    .line 761
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/Status;->getId()I

    move-result v0

    const/4 v5, 0x5

    const/4 v6, 0x7

    const-wide/16 v7, 0x0

    if-eq v0, v6, :cond_18a

    packed-switch v0, :pswitch_data_1fc

    goto/16 :goto_1fa

    :pswitch_39
    const-string v0, "Arriving Call #%s Destination address"

    .line 792
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getCallNumber()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 794
    new-instance v13, Lcom/towbook/api/CallLocation;

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getCallNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/towbook/api/CallWaypoint;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v0, v2, v3, v4}, Lcom/towbook/api/CallLocation;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 796
    invoke-virtual {v1}, Lcom/towbook/api/CallWaypoint;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v2, v7

    if-eqz v0, :cond_74

    invoke-virtual {v1}, Lcom/towbook/api/CallWaypoint;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v2, v7

    if-eqz v0, :cond_74

    .line 797
    invoke-virtual {v1}, Lcom/towbook/api/CallWaypoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/towbook/api/CallWaypoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v13, v2, v3, v0, v1}, Lcom/towbook/api/CallLocation;->setLocation(DD)V

    goto :goto_85

    .line 799
    :cond_74
    invoke-direct/range {p0 .. p1}, Lcom/towbook/mobile/CallListActivity;->getCallImpoundLotLocation(Lcom/towbook/api/Call;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 802
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v13, v1, v2, v3, v4}, Lcom/towbook/api/CallLocation;->setLocation(DD)V

    .line 806
    :cond_85
    :goto_85
    invoke-virtual {v13}, Lcom/towbook/api/CallLocation;->isLocationSet()Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 807
    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getStatuses()Ljava/util/List;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 808
    invoke-virtual {v13, v6}, Lcom/towbook/api/CallLocation;->setNextStatus(I)V

    goto :goto_a0

    .line 810
    :cond_9d
    invoke-virtual {v13, v5}, Lcom/towbook/api/CallLocation;->setNextStatus(I)V

    .line 813
    :goto_a0
    invoke-direct/range {p0 .. p0}, Lcom/towbook/mobile/CallListActivity;->getGeofenceHandler()Lcom/towbook/classes/geofences/GeofenceHandler;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getId()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/Status;->getId()I

    move-result v12

    invoke-virtual {v13}, Lcom/towbook/api/CallLocation;->getLatitude()D

    move-result-wide v15

    invoke-virtual {v13}, Lcom/towbook/api/CallLocation;->getLongitude()D

    move-result-wide v17

    invoke-virtual/range {v10 .. v18}, Lcom/towbook/classes/geofences/GeofenceHandler;->addCallLocationEntering(IILcom/towbook/api/CallLocation;Ljava/lang/String;DD)V

    goto/16 :goto_1fa

    :pswitch_bd
    const-string v0, "Leaving Call #%s Pick-Up address"

    .line 775
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getCallNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 777
    new-instance v9, Lcom/towbook/api/CallLocation;

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getCallNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/towbook/api/CallWaypoint;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v0, v1, v4, v2}, Lcom/towbook/api/CallLocation;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 778
    invoke-virtual {v3}, Lcom/towbook/api/CallWaypoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v3}, Lcom/towbook/api/CallWaypoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v9, v0, v1, v6, v7}, Lcom/towbook/api/CallLocation;->setLocation(DD)V

    .line 780
    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getTowDestination()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10e

    const/4 v0, 0x4

    .line 781
    invoke-virtual {v9, v0}, Lcom/towbook/api/CallLocation;->setNextStatus(I)V

    .line 783
    invoke-direct/range {p0 .. p0}, Lcom/towbook/mobile/CallListActivity;->getGeofenceHandler()Lcom/towbook/classes/geofences/GeofenceHandler;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getId()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/Status;->getId()I

    move-result v8

    invoke-virtual {v3}, Lcom/towbook/api/CallWaypoint;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v3}, Lcom/towbook/api/CallWaypoint;->getLongitude()D

    move-result-wide v13

    invoke-virtual/range {v6 .. v14}, Lcom/towbook/classes/geofences/GeofenceHandler;->addCallLocationLeaving(IILcom/towbook/api/CallLocation;Ljava/lang/String;DD)V

    goto/16 :goto_1fa

    .line 785
    :cond_10e
    invoke-virtual {v9, v5}, Lcom/towbook/api/CallLocation;->setNextStatus(I)V

    .line 787
    invoke-direct/range {p0 .. p0}, Lcom/towbook/mobile/CallListActivity;->getGeofenceHandler()Lcom/towbook/classes/geofences/GeofenceHandler;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getId()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/Status;->getId()I

    move-result v8

    invoke-virtual {v3}, Lcom/towbook/api/CallWaypoint;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v3}, Lcom/towbook/api/CallWaypoint;->getLongitude()D

    move-result-wide v13

    invoke-virtual/range {v6 .. v14}, Lcom/towbook/classes/geofences/GeofenceHandler;->addCallLocationLeaving(IILcom/towbook/api/CallLocation;Ljava/lang/String;DD)V

    goto/16 :goto_1fa

    :pswitch_12e
    if-eqz v3, :cond_1fa

    .line 763
    invoke-virtual {v3}, Lcom/towbook/api/CallWaypoint;->getLatitude()D

    move-result-wide v0

    cmpl-double v5, v0, v7

    if-eqz v5, :cond_1fa

    invoke-virtual {v3}, Lcom/towbook/api/CallWaypoint;->getLongitude()D

    move-result-wide v0

    cmpl-double v5, v0, v7

    if-eqz v5, :cond_1fa

    const-string v0, "Arriving to Call #%s Pick-Up address"

    .line 764
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getCallNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 766
    new-instance v8, Lcom/towbook/api/CallLocation;

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getCallNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/towbook/api/CallWaypoint;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v0, v1, v4, v2}, Lcom/towbook/api/CallLocation;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 767
    invoke-virtual {v3}, Lcom/towbook/api/CallWaypoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v3}, Lcom/towbook/api/CallWaypoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v8, v0, v1, v4, v5}, Lcom/towbook/api/CallLocation;->setLocation(DD)V

    const/4 v0, 0x3

    .line 768
    invoke-virtual {v8, v0}, Lcom/towbook/api/CallLocation;->setNextStatus(I)V

    .line 770
    invoke-direct/range {p0 .. p0}, Lcom/towbook/mobile/CallListActivity;->getGeofenceHandler()Lcom/towbook/classes/geofences/GeofenceHandler;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getId()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/Status;->getId()I

    move-result v7

    invoke-virtual {v3}, Lcom/towbook/api/CallWaypoint;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v3}, Lcom/towbook/api/CallWaypoint;->getLongitude()D

    move-result-wide v12

    invoke-virtual/range {v5 .. v13}, Lcom/towbook/classes/geofences/GeofenceHandler;->addCallLocationEntering(IILcom/towbook/api/CallLocation;Ljava/lang/String;DD)V

    goto :goto_1fa

    :cond_18a
    const-string v0, "Leaving Call #%s Destination address"

    .line 818
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getCallNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 820
    new-instance v12, Lcom/towbook/api/CallLocation;

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getCallNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/towbook/api/CallWaypoint;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v0, v2, v3, v4}, Lcom/towbook/api/CallLocation;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 822
    invoke-virtual {v1}, Lcom/towbook/api/CallWaypoint;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v2, v7

    if-eqz v0, :cond_1c5

    invoke-virtual {v1}, Lcom/towbook/api/CallWaypoint;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v2, v7

    if-eqz v0, :cond_1c5

    .line 823
    invoke-virtual {v1}, Lcom/towbook/api/CallWaypoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/towbook/api/CallWaypoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v12, v2, v3, v0, v1}, Lcom/towbook/api/CallLocation;->setLocation(DD)V

    goto :goto_1d6

    .line 825
    :cond_1c5
    invoke-direct/range {p0 .. p1}, Lcom/towbook/mobile/CallListActivity;->getCallImpoundLotLocation(Lcom/towbook/api/Call;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1d6

    .line 828
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v12, v1, v2, v3, v4}, Lcom/towbook/api/CallLocation;->setLocation(DD)V

    .line 832
    :cond_1d6
    :goto_1d6
    invoke-virtual {v12}, Lcom/towbook/api/CallLocation;->isLocationSet()Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 833
    invoke-virtual {v12, v5}, Lcom/towbook/api/CallLocation;->setNextStatus(I)V

    .line 835
    invoke-direct/range {p0 .. p0}, Lcom/towbook/mobile/CallListActivity;->getGeofenceHandler()Lcom/towbook/classes/geofences/GeofenceHandler;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getId()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/Status;->getId()I

    move-result v11

    invoke-virtual {v12}, Lcom/towbook/api/CallLocation;->getLatitude()D

    move-result-wide v14

    invoke-virtual {v12}, Lcom/towbook/api/CallLocation;->getLongitude()D

    move-result-wide v16

    invoke-virtual/range {v9 .. v17}, Lcom/towbook/classes/geofences/GeofenceHandler;->addCallLocationLeaving(IILcom/towbook/api/CallLocation;Ljava/lang/String;DD)V

    :cond_1fa
    :goto_1fa
    return-void

    nop

    :pswitch_data_1fc
    .packed-switch 0x2
        :pswitch_12e
        :pswitch_bd
        :pswitch_39
    .end packed-switch
.end method

.method private handleGeofenceRemoval(Lcom/towbook/api/Call;)V
    .registers 4

    .line 861
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 863
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/towbook/api/Status;->getId()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_18

    const/16 v1, 0xff

    if-eq p1, v1, :cond_18

    goto :goto_1f

    .line 866
    :cond_18
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getGeofenceHandler()Lcom/towbook/classes/geofences/GeofenceHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/towbook/classes/geofences/GeofenceHandler;->remove(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method private handleGeofencesList()V
    .registers 3

    const/16 v0, 0x3e

    .line 715
    invoke-static {p0, v0}, Lcom/towbook/utils/AppUtils;->isFeatureEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 719
    :cond_9
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/towbook/mobile/CallListActivity$$Lambda$5;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/CallListActivity$$Lambda$5;-><init>(Lcom/towbook/mobile/CallListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 750
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private handleView()V
    .registers 6

    .line 451
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViewsInLayout()V

    .line 452
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->removeAllTabs()V

    const/4 v0, 0x0

    .line 454
    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mWaitingTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 455
    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mActiveTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 456
    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mScheduledTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 457
    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mCompleteTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 458
    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mCancelledTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 460
    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 461
    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/towbook/mobile/CallListActivity;->listHasScheduledCalls(Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/towbook/mobile/CallListActivity;->mHasScheduledCalls:Z

    .line 463
    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Call;

    .line 464
    invoke-direct {p0, v1}, Lcom/towbook/mobile/CallListActivity;->setCallResponse(Lcom/towbook/api/Call;)V

    goto :goto_2f

    .line 468
    :cond_3f
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/towbook/api/ConfigSettings;->showWaitingTabForCurrent(Lcom/towbook/api/CurrentUser;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 469
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    const-string v1, "tab_waiting"

    .line 470
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    const v1, 0x7f0f02fe

    .line 471
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mWaitingTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 474
    :cond_60
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    const-string v1, "tab_active"

    .line 475
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    const v1, 0x7f0f02ed

    .line 476
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mActiveTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 478
    iget-boolean v0, p0, Lcom/towbook/mobile/CallListActivity;->mHasScheduledCalls:Z

    if-eqz v0, :cond_8e

    .line 479
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    const-string v1, "tab_scheduled"

    .line 480
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    const v1, 0x7f0f02fc

    .line 481
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mScheduledTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 484
    :cond_8e
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    const-string v1, "tab_completed"

    .line 485
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    const v1, 0x7f0f02f3

    .line 486
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mCompleteTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 488
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    const-string v1, "tab_cancelled"

    .line 489
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    const v1, 0x7f0f02f2

    .line 490
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mCancelledTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mIsRunning:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12f

    .line 495
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mWaitingTab:Landroid/support/v7/app/ActionBar$Tab;

    if-eqz v1, :cond_db

    .line 496
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mWaitingTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v1, p0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 497
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    iget-object v3, p0, Lcom/towbook/mobile/CallListActivity;->mWaitingTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V

    const-string v1, "Waiting"

    .line 498
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_db
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mActiveTab:Landroid/support/v7/app/ActionBar$Tab;

    if-eqz v1, :cond_f0

    .line 502
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mActiveTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v1, p0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 503
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    iget-object v3, p0, Lcom/towbook/mobile/CallListActivity;->mActiveTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V

    const-string v1, "Active"

    .line 504
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_f0
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mScheduledTab:Landroid/support/v7/app/ActionBar$Tab;

    if-eqz v1, :cond_105

    .line 508
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mScheduledTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v1, p0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 509
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    iget-object v3, p0, Lcom/towbook/mobile/CallListActivity;->mScheduledTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V

    const-string v1, "Scheduled"

    .line 510
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_105
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mCompleteTab:Landroid/support/v7/app/ActionBar$Tab;

    if-eqz v1, :cond_11a

    .line 514
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mCompleteTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v1, p0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 515
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    iget-object v3, p0, Lcom/towbook/mobile/CallListActivity;->mCompleteTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V

    const-string v1, "Completed"

    .line 516
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_11a
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mCancelledTab:Landroid/support/v7/app/ActionBar$Tab;

    if-eqz v1, :cond_12f

    .line 520
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mCancelledTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v1, p0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 521
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    iget-object v3, p0, Lcom/towbook/mobile/CallListActivity;->mCancelledTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V

    const-string v1, "Cancelled"

    .line 522
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_12f
    new-instance v1, Lcom/towbook/mobile/CallListActivity$AppSectionsPagerAdapter;

    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/towbook/mobile/CallListActivity;->mTowbook:Lcom/towbook/Towbook;

    invoke-virtual {v4}, Lcom/towbook/Towbook;->companies()Lcom/towbook/businessModel/Companies;

    move-result-object v4

    invoke-virtual {v4}, Lcom/towbook/businessModel/Companies;->getAll()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, p0, v3, v0, v4}, Lcom/towbook/mobile/CallListActivity$AppSectionsPagerAdapter;-><init>(Lcom/towbook/mobile/CallListActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mAppSectionsPagerAdapter:Lcom/towbook/mobile/CallListActivity$AppSectionsPagerAdapter;

    .line 528
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    monitor-enter v0

    .line 529
    :try_start_147
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 530
    monitor-exit v0
    :try_end_14d
    .catchall {:try_start_147 .. :try_end_14d} :catchall_1d7

    .line 532
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getTabCount()I

    move-result v0

    sput v0, Lcom/towbook/mobile/CallListActivity;->limit:I

    .line 534
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    monitor-enter v1

    .line 535
    :try_start_158
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 536
    monitor-exit v1
    :try_end_15e
    .catchall {:try_start_158 .. :try_end_15e} :catchall_1d4

    .line 539
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mAppSectionsPagerAdapter:Lcom/towbook/mobile/CallListActivity$AppSectionsPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 540
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 542
    iget v0, p0, Lcom/towbook/mobile/CallListActivity;->mTabCurrent:I

    sget v1, Lcom/towbook/mobile/CallListActivity;->limit:I

    if-ne v0, v1, :cond_176

    .line 543
    iget v0, p0, Lcom/towbook/mobile/CallListActivity;->mTabCurrent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/towbook/mobile/CallListActivity;->mTabCurrent:I

    .line 545
    :cond_176
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getTabCount()I

    move-result v0

    if-lez v0, :cond_193

    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentTabIndex()I

    move-result v0

    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_193

    .line 546
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentTabIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 548
    :cond_193
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 550
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mAppSectionsPagerAdapter:Lcom/towbook/mobile/CallListActivity$AppSectionsPagerAdapter;

    if-eqz v0, :cond_1a4

    .line 551
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mAppSectionsPagerAdapter:Lcom/towbook/mobile/CallListActivity$AppSectionsPagerAdapter;

    invoke-virtual {v0}, Lcom/towbook/mobile/CallListActivity$AppSectionsPagerAdapter;->notifyDataSetChanged()V

    .line 555
    :cond_1a4
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->isDriver()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1b6

    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->isCurrentUserIsLinkedAsDriver()Z

    move-result v0

    if-eqz v0, :cond_1c9

    :cond_1b6
    const/16 v0, 0x37

    invoke-static {p0, v0}, Lcom/towbook/utils/AppUtils;->isFeatureEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1c9

    .line 556
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mNewCallFab:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mComposedFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    goto :goto_1d3

    .line 559
    :cond_1c9
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mNewCallFab:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mComposedFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    :goto_1d3
    return-void

    :catchall_1d4
    move-exception v0

    .line 536
    :try_start_1d5
    monitor-exit v1
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_1d4

    throw v0

    :catchall_1d7
    move-exception v1

    .line 530
    :try_start_1d8
    monitor-exit v0
    :try_end_1d9
    .catchall {:try_start_1d8 .. :try_end_1d9} :catchall_1d7

    throw v1
.end method

.method private initData()V
    .registers 3

    const-string v0, "CallListActivity"

    const-string v1, "initData()..."

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/towbook/mobile/CallListActivity$2;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/CallListActivity$2;-><init>(Lcom/towbook/mobile/CallListActivity;)V

    invoke-static {v0, v1}, Lcom/towbook/core/Core;->loadUserEnvironment(Landroid/content/Context;Lio/reactivex/Observer;)V

    return-void
.end method

.method private initListeners()V
    .registers 5

    const/4 v0, 0x1

    .line 295
    sput-boolean v0, Lcom/towbook/mobile/TowbookApplication;->isLoggedIn:Z

    .line 298
    new-instance v0, Lcom/towbook/mobile/CallListActivity$PusherActionReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/towbook/mobile/CallListActivity$PusherActionReceiver;-><init>(Lcom/towbook/mobile/CallListActivity;Lcom/towbook/mobile/CallListActivity$1;)V

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mReceiver:Lcom/towbook/mobile/CallListActivity$PusherActionReceiver;

    .line 299
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mReceiver:Lcom/towbook/mobile/CallListActivity$PusherActionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "call_update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/CallListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mReceiver:Lcom/towbook/mobile/CallListActivity$PusherActionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "accepted_call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/CallListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 301
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mReceiver:Lcom/towbook/mobile/CallListActivity$PusherActionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "rejected_call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/CallListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mReceiver:Lcom/towbook/mobile/CallListActivity$PusherActionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "new_message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/CallListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mReceiver:Lcom/towbook/mobile/CallListActivity$PusherActionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "reload_call_list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/CallListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    invoke-static {p0}, Lcom/towbook/mobile/service/PusherService;->isMyPusherServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_cf

    const-string v0, "CallListActivity"

    const-string v1, "Starting pusher service"

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {p0}, Lcom/towbook/mobile/service/PusherService;->start(Landroid/content/Context;)V

    .line 310
    :cond_cf
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_e1

    .line 311
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mDataSaverChangedBroadcastReceiver:Lcom/towbook/mobile/CallListActivity$DataSaverChangedBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/CallListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    :cond_e1
    new-instance v0, Lcom/towbook/mobile/CallListActivity$1;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/CallListActivity$1;-><init>(Lcom/towbook/mobile/CallListActivity;)V

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 329
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "CallListActivity.refreshCalls"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/CallListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initView()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const v0, 0x7f0902e1

    .line 400
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 402
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    const v0, 0x7f0902c1

    .line 404
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mNewCallFab:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f090118

    .line 405
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mComposedFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const v0, 0x7f090119

    .line 406
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mComposedNewCallFab:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f09011a

    .line 407
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mComposedNewOnSceneCallFab:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f0902cf

    .line 408
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mNotificationBar:Landroid/widget/RelativeLayout;

    .line 410
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mComposedFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    new-instance v1, Lcom/towbook/mobile/CallListActivity$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/CallListActivity$$Lambda$1;-><init>(Lcom/towbook/mobile/CallListActivity;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 414
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mComposedFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setFocusable(Z)V

    .line 416
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mNewCallFab:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/towbook/mobile/CallListActivity$$Lambda$2;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/CallListActivity$$Lambda$2;-><init>(Lcom/towbook/mobile/CallListActivity;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mComposedNewCallFab:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/towbook/mobile/CallListActivity$$Lambda$3;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/CallListActivity$$Lambda$3;-><init>(Lcom/towbook/mobile/CallListActivity;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mComposedNewOnSceneCallFab:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/towbook/mobile/CallListActivity$$Lambda$4;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/CallListActivity$$Lambda$4;-><init>(Lcom/towbook/mobile/CallListActivity;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mNewCallFab:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->bringToFront()V

    return-void
.end method

.method private isCurrentUserIsLinkedAsDriver()Z
    .registers 3

    .line 1006
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mTowbook:Lcom/towbook/Towbook;

    invoke-virtual {v0}, Lcom/towbook/Towbook;->drivers()Lcom/towbook/businessModel/Drivers;

    move-result-object v0

    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/towbook/api/CurrentUser;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/towbook/businessModel/Drivers;->getByLinkedUserId(I)Lcom/towbook/api/Driver;

    move-result-object v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private listHasScheduledCalls(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Call;",
            ">;)Z"
        }
    .end annotation

    .line 565
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Call;

    .line 566
    invoke-virtual {v0}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/towbook/api/Status;->getId()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/towbook/api/Call;->getArrivalETA()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 567
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/towbook/api/Call;->getArrivalETA()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v2, v4

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    const-wide/16 v2, 0x6

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_3c
    const/4 p1, 0x0

    return p1
.end method

.method private loadCalls()V
    .registers 3

    .line 633
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mIsRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "current_call_filter"

    .line 634
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "only_assigned"

    .line 636
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 637
    invoke-direct {p0, v0}, Lcom/towbook/mobile/CallListActivity;->filterCalls(Z)V

    .line 640
    :cond_1a
    sget v0, Lcom/towbook/mobile/CallListActivity;->lastSelectedCompanyId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 641
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->GenDataSub()V

    .line 642
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->handleView()V

    goto :goto_2b

    .line 644
    :cond_26
    sget v0, Lcom/towbook/mobile/CallListActivity;->lastSelectedCompanyId:I

    invoke-direct {p0, v0}, Lcom/towbook/mobile/CallListActivity;->filterListResponseByCompanyId(I)V

    .line 647
    :goto_2b
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->handleGeofencesList()V

    :cond_2e
    return-void
.end method

.method private loadForwardedCall()V
    .registers 6

    .line 887
    iget v0, p0, Lcom/towbook/mobile/CallListActivity;->mForwardedCallId:I

    if-eqz v0, :cond_4e

    .line 888
    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Call;

    .line 889
    invoke-virtual {v1}, Lcom/towbook/api/Call;->getId()I

    move-result v3

    iget v4, p0, Lcom/towbook/mobile/CallListActivity;->mForwardedCallId:I

    if-ne v3, v4, :cond_a

    .line 890
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/towbook/mobile/CallViewActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "data"

    .line 891
    invoke-static {v1}, Lcom/towbook/api/core/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 892
    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/CallListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    if-nez v0, :cond_47

    const v0, 0x7f0f01d4

    .line 898
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lme/drakeet/support/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/ToastCompat;

    move-result-object v0

    invoke-virtual {v0}, Lme/drakeet/support/toast/ToastCompat;->show()V

    .line 900
    :cond_47
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 901
    iput v2, p0, Lcom/towbook/mobile/CallListActivity;->mForwardedCallId:I

    :cond_4e
    return-void
.end method

.method private newCallForm()V
    .registers 4

    .line 942
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    invoke-virtual {v0}, Lcom/towbook/api/ConfigSettings;->getCompanies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1c

    .line 943
    new-instance v0, Lcom/towbook/mobile/CompanyPickerDialog;

    invoke-direct {v0}, Lcom/towbook/mobile/CompanyPickerDialog;-><init>()V

    .line 944
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "newCallForm"

    invoke-virtual {v0, v1, v2}, Lcom/towbook/mobile/CompanyPickerDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_1c
    const/4 v0, 0x0

    .line 948
    invoke-direct {p0, v0}, Lcom/towbook/mobile/CallListActivity;->newCallForm(Ljava/lang/Integer;)V

    return-void
.end method

.method private newCallForm(Ljava/lang/Integer;)V
    .registers 5

    .line 952
    new-instance v0, Lcom/towbook/api/Account;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/towbook/api/Account;-><init>(ILjava/lang/String;)V

    .line 954
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/towbook/api/CurrentUser;->isAccountUser()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 955
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->parseAccountForCurrentUser()Lcom/towbook/api/Account;

    move-result-object v0

    .line 958
    :cond_16
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getACallForAdd(Lcom/towbook/api/Account;Landroid/app/Activity;)Lcom/towbook/api/Call;

    move-result-object v0

    if-eqz p1, :cond_1f

    .line 961
    invoke-virtual {v0, p1}, Lcom/towbook/api/Call;->setCompanyId(Ljava/lang/Integer;)V

    .line 964
    :cond_1f
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/CallEditActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "data"

    .line 965
    invoke-static {v0}, Lcom/towbook/api/core/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x64

    .line 967
    invoke-virtual {p0, p1, v0}, Lcom/towbook/mobile/CallListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private newOnSceneCallForm()V
    .registers 4

    .line 971
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    invoke-virtual {v0}, Lcom/towbook/api/ConfigSettings;->getCompanies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1c

    .line 972
    new-instance v0, Lcom/towbook/mobile/CompanyPickerDialog;

    invoke-direct {v0}, Lcom/towbook/mobile/CompanyPickerDialog;-><init>()V

    .line 973
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "newOnSceneCallForm"

    invoke-virtual {v0, v1, v2}, Lcom/towbook/mobile/CompanyPickerDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_1c
    const/4 v0, 0x0

    .line 977
    invoke-direct {p0, v0}, Lcom/towbook/mobile/CallListActivity;->newOnSceneCallForm(Ljava/lang/Integer;)V

    return-void
.end method

.method private newOnSceneCallForm(Ljava/lang/Integer;)V
    .registers 4

    .line 981
    iput-object p1, p0, Lcom/towbook/mobile/CallListActivity;->mCurrentCompanyId:Ljava/lang/Integer;

    .line 983
    new-instance v0, Lcom/towbook/api/Call;

    invoke-direct {v0}, Lcom/towbook/api/Call;-><init>()V

    if-eqz p1, :cond_c

    .line 986
    invoke-virtual {v0, p1}, Lcom/towbook/api/Call;->setCompanyId(Ljava/lang/Integer;)V

    .line 991
    :cond_c
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_1a

    .line 992
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/calls/OnSceneCallActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_21

    .line 994
    :cond_1a
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/calls/OnSceneCallPhotosActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_21
    const-string v1, "data"

    .line 997
    invoke-static {v0}, Lcom/towbook/api/core/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x64

    .line 998
    invoke-virtual {p0, p1, v0}, Lcom/towbook/mobile/CallListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private parseAccountForCurrentUser()Lcom/towbook/api/Account;
    .registers 5

    .line 934
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    invoke-virtual {v0}, Lcom/towbook/api/ConfigSettings;->getAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Account;

    .line 935
    invoke-virtual {v1}, Lcom/towbook/api/Account;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not Selected"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return-object v1

    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method private refreshCalls()V
    .registers 2

    const/4 v0, 0x1

    .line 583
    iput-boolean v0, p0, Lcom/towbook/mobile/CallListActivity;->mIsRefreshing:Z

    .line 584
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->supportInvalidateOptionsMenu()V

    .line 586
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 587
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->fetchCalls()V

    .line 589
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->getAcceptReject()Lcom/towbook/api/user/AcceptReject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/user/AcceptReject;->getEnableRequest()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 590
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->fetchCallRequests()V

    .line 593
    :cond_24
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->isRequireGPSCheckin()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->isCheckInStatus()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 594
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->checkoutUser()V

    goto :goto_45

    .line 597
    :cond_42
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->signOut()V

    :cond_45
    :goto_45
    return-void
.end method

.method private search(Ljava/lang/String;)V
    .registers 12

    const-string v0, ""

    .line 1182
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 1183
    iget-object v2, p0, Lcom/towbook/mobile/CallListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listViewCall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 1184
    iget-object v3, p0, Lcom/towbook/mobile/CallListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "txtEmptyList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "current_call_filter"

    .line 1185
    invoke-static {v4, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CallListActivity"

    .line 1187
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "txtEmptyList"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_8c

    const/4 v5, 0x1

    if-ne v1, v5, :cond_6a

    .line 1191
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0f0210

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8c

    :cond_6a
    const/4 v5, 0x2

    if-ne v1, v5, :cond_7c

    .line 1193
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0f0219

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8c

    :cond_7c
    if-nez v1, :cond_8c

    .line 1195
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0f022b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    :cond_8c
    :goto_8c
    invoke-static {p1}, Lcom/towbook/utils/AppUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_114

    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->mAppSectionsPagerAdapter:Lcom/towbook/mobile/CallListActivity$AppSectionsPagerAdapter;

    if-eqz v1, :cond_114

    .line 1199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    iget-object v5, p0, Lcom/towbook/mobile/CallListActivity;->mAppSectionsPagerAdapter:Lcom/towbook/mobile/CallListActivity$AppSectionsPagerAdapter;

    iget-object v6, p0, Lcom/towbook/mobile/CallListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/towbook/mobile/CallListActivity$AppSectionsPagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/towbook/mobile/CallListFragment;

    if-eqz v5, :cond_ef

    .line 1204
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 1205
    invoke-virtual {v5}, Lcom/towbook/mobile/CallListFragment;->getItems()Ljava/util/List;

    move-result-object v1

    goto :goto_e0

    .line 1207
    :cond_bc
    sget-object v6, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c2
    :goto_c2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/towbook/api/Call;

    .line 1208
    invoke-virtual {v7}, Lcom/towbook/api/Call;->getContentSearch()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c2

    .line 1209
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c2

    :cond_e0
    :goto_e0
    const-string v6, "only_assigned"

    .line 1213
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 1214
    invoke-virtual {p0, v1}, Lcom/towbook/mobile/CallListActivity;->getAssignedCalls(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1217
    :cond_ec
    invoke-virtual {v5, v1}, Lcom/towbook/mobile/CallListFragment;->replaceItems(Ljava/util/List;)V

    :cond_ef
    if-eqz v2, :cond_114

    .line 1221
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_110

    if-eqz v3, :cond_114

    const-string v1, ""

    .line 1223
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10c

    const p1, 0x7f0f0215

    .line 1224
    invoke-virtual {p0, p1}, Lcom/towbook/mobile/CallListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_114

    .line 1226
    :cond_10c
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_114

    :cond_110
    const/4 p1, 0x0

    .line 1229
    invoke-virtual {v2, p1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_114
    :goto_114
    return-void
.end method

.method private setCallResponse(Lcom/towbook/api/Call;)V
    .registers 4

    .line 1332
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getResponseType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_80

    .line 1333
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_80

    invoke-virtual {p1}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_80

    .line 1334
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Asset;

    invoke-virtual {v0}, Lcom/towbook/api/Asset;->getDrivers()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 1335
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Asset;

    invoke-virtual {v0}, Lcom/towbook/api/Asset;->getDrivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_79

    .line 1336
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Asset;

    invoke-virtual {v0}, Lcom/towbook/api/Asset;->getDrivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/AssetDriverTruck;

    invoke-virtual {v0}, Lcom/towbook/api/AssetDriverTruck;->getDriver()Lcom/towbook/api/Driver;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 1337
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Asset;

    invoke-virtual {v0}, Lcom/towbook/api/Asset;->getDrivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/AssetDriverTruck;

    invoke-virtual {v0}, Lcom/towbook/api/AssetDriverTruck;->getDriver()Lcom/towbook/api/Driver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/Driver;->getResponseStatusId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/towbook/api/Call;->setResponseType(Ljava/lang/Integer;)V

    goto :goto_80

    .line 1339
    :cond_79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/towbook/api/Call;->setResponseType(Ljava/lang/Integer;)V

    :cond_80
    :goto_80
    return-void
.end method

.method private signOut()V
    .registers 2

    .line 579
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {v0, p0}, Lcom/towbook/mobile/TowbookApplication;->signOut(Landroid/app/Activity;)V

    return-void
.end method

.method private updateTabsUi(I)V
    .registers 4

    .line 1289
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/towbook/mobile/CallListActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/towbook/mobile/CallListActivity$7;-><init>(Lcom/towbook/mobile/CallListActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateView()V
    .registers 4

    .line 434
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mNewCallFab:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mComposedFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 437
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 439
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->isDriver()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->isCurrentUserIsLinkedAsDriver()Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_23
    const/16 v0, 0x37

    invoke-static {p0, v0}, Lcom/towbook/utils/AppUtils;->isFeatureEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 440
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mNewCallFab:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mComposedFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    :cond_35
    return-void
.end method


# virtual methods
.method public getAssignedCalls(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Call;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/Call;",
            ">;"
        }
    .end annotation

    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/Call;

    .line 1056
    invoke-virtual {v1}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 1057
    invoke-virtual {v1}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/Asset;

    .line 1058
    invoke-virtual {v3}, Lcom/towbook/api/Asset;->getDriver()Lcom/towbook/api/Driver;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1059
    iget-object v4, p0, Lcom/towbook/mobile/CallListActivity;->mTowbook:Lcom/towbook/Towbook;

    invoke-virtual {v4}, Lcom/towbook/Towbook;->drivers()Lcom/towbook/businessModel/Drivers;

    move-result-object v4

    invoke-virtual {v3}, Lcom/towbook/api/Asset;->getDriver()Lcom/towbook/api/Driver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/towbook/api/Driver;->getId()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/towbook/businessModel/Drivers;->getById(I)Lcom/towbook/api/Driver;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1061
    invoke-virtual {v3}, Lcom/towbook/api/Driver;->getLinkedUserId()I

    move-result v3

    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/towbook/api/CurrentUser;->getId()I

    move-result v4

    if-ne v3, v4, :cond_2d

    .line 1062
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_65
    return-object v0
.end method

.method isAssignedDriver(Lcom/towbook/api/Asset;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 874
    :cond_4
    invoke-virtual {p1}, Lcom/towbook/api/Asset;->getDrivers()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/towbook/api/AssetDriverTruck;

    .line 875
    invoke-virtual {v1}, Lcom/towbook/api/AssetDriverTruck;->getDriver()Lcom/towbook/api/Driver;

    move-result-object v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/towbook/mobile/CallListActivity;->mTowbook:Lcom/towbook/Towbook;

    invoke-virtual {v2}, Lcom/towbook/Towbook;->drivers()Lcom/towbook/businessModel/Drivers;

    move-result-object v2

    invoke-virtual {v1}, Lcom/towbook/api/AssetDriverTruck;->getDriver()Lcom/towbook/api/Driver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/towbook/api/Driver;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/towbook/businessModel/Drivers;->getById(I)Lcom/towbook/api/Driver;

    move-result-object v1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    if-eqz v1, :cond_c

    .line 877
    invoke-virtual {v1}, Lcom/towbook/api/Driver;->getUserId()I

    move-result v1

    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/towbook/api/CurrentUser;->getId()I

    move-result v2

    if-ne v1, v2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_44
    return v0
.end method

.method final synthetic lambda$handleGeofencesList$5$CallListActivity()V
    .registers 8

    const/4 v0, 0x4

    .line 720
    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 722
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getGeofenceHandler()Lcom/towbook/classes/geofences/GeofenceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/towbook/classes/geofences/GeofenceHandler;->loadGeofences()V

    .line 724
    sget-object v1, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/Call;

    .line 725
    invoke-virtual {v2}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_58

    invoke-virtual {v2}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_58

    invoke-virtual {v2}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/Asset;

    goto :goto_59

    :cond_58
    const/4 v3, 0x0

    .line 726
    :goto_59
    invoke-virtual {v2}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v5

    if-eqz v5, :cond_68

    invoke-virtual {v2}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/towbook/api/Status;->getId()I

    move-result v5

    goto :goto_69

    :cond_68
    const/4 v5, 0x0

    .line 728
    :goto_69
    invoke-virtual {p0, v3}, Lcom/towbook/mobile/CallListActivity;->isAssignedDriver(Lcom/towbook/api/Asset;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 729
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getGeofenceHandler()Lcom/towbook/classes/geofences/GeofenceHandler;

    move-result-object v3

    invoke-virtual {v2}, Lcom/towbook/api/Call;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/towbook/classes/geofences/GeofenceHandler;->geofenceExists(I)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 731
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getGeofenceHandler()Lcom/towbook/classes/geofences/GeofenceHandler;

    move-result-object v3

    invoke-virtual {v2}, Lcom/towbook/api/Call;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/towbook/classes/geofences/GeofenceHandler;->getCallGeofence(I)Lcom/towbook/data/entities/CallGeofence;

    move-result-object v3

    .line 734
    invoke-virtual {v2}, Lcom/towbook/api/Call;->getStatus()Lcom/towbook/api/Status;

    move-result-object v6

    invoke-virtual {v6}, Lcom/towbook/api/Status;->getId()I

    move-result v6

    invoke-virtual {v3}, Lcom/towbook/data/entities/CallGeofence;->getCallStatusId()I

    move-result v3

    if-eq v6, v3, :cond_31

    .line 735
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 736
    invoke-direct {p0, v2}, Lcom/towbook/mobile/CallListActivity;->handleGeofence(Lcom/towbook/api/Call;)V

    goto :goto_31

    .line 738
    :cond_a5
    invoke-direct {p0, v2}, Lcom/towbook/mobile/CallListActivity;->handleGeofenceRemoval(Lcom/towbook/api/Call;)V

    goto :goto_31

    .line 744
    :cond_a9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 746
    invoke-direct {p0, v2}, Lcom/towbook/mobile/CallListActivity;->handleGeofence(Lcom/towbook/api/Call;)V

    goto/16 :goto_31

    :cond_b8
    return-void
.end method

.method final synthetic lambda$initView$1$CallListActivity(Landroid/view/View;Z)V
    .registers 3

    if-nez p2, :cond_7

    .line 412
    iget-object p1, p0, Lcom/towbook/mobile/CallListActivity;->mComposedFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    :cond_7
    return-void
.end method

.method final synthetic lambda$initView$2$CallListActivity(Landroid/view/View;)V
    .registers 2

    .line 416
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->newCallForm()V

    return-void
.end method

.method final synthetic lambda$initView$3$CallListActivity(Landroid/view/View;)V
    .registers 2

    .line 418
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->newCallForm()V

    .line 419
    iget-object p1, p0, Lcom/towbook/mobile/CallListActivity;->mComposedFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    return-void
.end method

.method final synthetic lambda$initView$4$CallListActivity(Landroid/view/View;)V
    .registers 3

    .line 422
    iget-object p1, p0, Lcom/towbook/mobile/CallListActivity;->mComposedFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    const-string p1, "android.permission.CAMERA"

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 423
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/towbook/utils/AppUtils;->isPermissionGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 424
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->newOnSceneCallForm()V

    goto :goto_24

    :cond_17
    const-string p1, "android.permission.CAMERA"

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 426
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1b58

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_24
    return-void
.end method

.method final synthetic lambda$onResume$0$CallListActivity()V
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->searchViewKeyword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/towbook/mobile/CallListActivity;->search(Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 382
    invoke-super {p0, p1, p2, p3}, Lcom/towbook/mobile/BaseSlidingActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_3a

    const/16 p1, 0x65

    if-ne p2, p1, :cond_3a

    const-string p1, "com.towbook.mobile.call"

    .line 386
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/towbook/api/Call;

    invoke-static {p1, p2}, Lcom/towbook/api/core/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/towbook/api/Call;

    if-eqz p1, :cond_1e

    .line 389
    invoke-virtual {p0, p1}, Lcom/towbook/mobile/CallListActivity;->updateListUI(Lcom/towbook/api/Call;)V

    :cond_1e
    const-string p1, "CallListActivity"

    const-string p2, "Forward new call to CallViewActivity..."

    .line 391
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/towbook/mobile/CallViewActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "data"

    const-string v1, "com.towbook.mobile.call"

    .line 393
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0, p1, v0}, Lcom/towbook/mobile/CallListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3a
    return-void
.end method

.method public onCompanyPickerDialogSelectionChoosen(Lcom/towbook/api/Company;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_5d

    const-string v0, "CallListActivity"

    .line 1074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User chose company ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/towbook/api/core/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "newOnSceneCallForm"

    .line 1076
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    const-string p2, "android.permission.CAMERA"

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1077
    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/towbook/utils/AppUtils;->isPermissionGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 1078
    invoke-virtual {p1}, Lcom/towbook/api/Company;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/towbook/mobile/CallListActivity;->newOnSceneCallForm(Ljava/lang/Integer;)V

    goto :goto_5d

    :cond_46
    const-string p1, "android.permission.CAMERA"

    .line 1080
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1b58

    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_5d

    .line 1083
    :cond_52
    invoke-virtual {p1}, Lcom/towbook/api/Company;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/towbook/mobile/CallListActivity;->newCallForm(Ljava/lang/Integer;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1169
    invoke-super {p0, p1}, Lcom/towbook/mobile/BaseSlidingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1172
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1174
    sget p1, Lcom/towbook/mobile/CallListActivity;->limit:I

    invoke-direct {p0, p1}, Lcom/towbook/mobile/CallListActivity;->updateTabsUi(I)V

    goto :goto_18

    .line 1175
    :cond_e
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 1176
    sget p1, Lcom/towbook/mobile/CallListActivity;->limit:I

    invoke-direct {p0, p1}, Lcom/towbook/mobile/CallListActivity;->updateTabsUi(I)V

    :cond_18
    :goto_18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "CallListActivity"

    const-string v1, "onCreate()..."

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0, p1}, Lcom/towbook/mobile/BaseSlidingActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 175
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/towbook/mobile/CallListActivity;->mIsRunning:Ljava/lang/Boolean;

    const p1, 0x7f0b0042

    .line 176
    invoke-virtual {p0, p1}, Lcom/towbook/mobile/CallListActivity;->setContentView(I)V

    .line 178
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    .line 179
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {p1}, Lcom/towbook/mobile/TowbookApplication;->getConfig()Lcom/towbook/api/ConfigSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    const-string p1, "tab_calls_current"

    .line 181
    invoke-static {p1, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "tab_calls_current"

    const-string v0, "0"

    .line 182
    invoke-static {p1, v0, p0}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 185
    :cond_3c
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->initView()V

    .line 186
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->initListeners()V

    .line 188
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->forwardNotification()V

    .line 190
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->initData()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 10

    .line 1119
    new-instance v0, Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color = #ffffff>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f02e5

    invoke-virtual {p0, v2}, Lcom/towbook/mobile/CallListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    const-string v1, "Search"

    .line 1122
    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f080182

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    .line 1123
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1124
    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1126
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    invoke-virtual {v0}, Lcom/towbook/api/ConfigSettings;->getCompanies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_a9

    const-string v0, "Filter"

    .line 1128
    invoke-interface {p1, v0}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    const/4 v4, -0x1

    const-string v5, "All"

    .line 1130
    invoke-interface {v0, v3, v4, v3, v5}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1132
    iget-object v4, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    invoke-virtual {v4}, Lcom/towbook/api/ConfigSettings;->getCompanies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :goto_76
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/towbook/api/Company;

    .line 1133
    invoke-virtual {v6}, Lcom/towbook/api/Company;->getId()I

    move-result v7

    invoke-virtual {v6}, Lcom/towbook/api/Company;->getShortName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v7, v5, v6}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/2addr v5, v1

    goto :goto_76

    .line 1137
    :cond_93
    invoke-interface {v0}, Landroid/view/SubMenu;->size()I

    move-result v4

    if-le v4, v1, :cond_a9

    .line 1138
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->menuCompanyFilter:Landroid/view/MenuItem;

    .line 1139
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->menuCompanyFilter:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1140
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->menuCompanyFilter:Landroid/view/MenuItem;

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_a9
    const v0, 0x7f080198

    const/4 v4, 0x3

    const v5, 0x7f0f01bc

    .line 1144
    invoke-interface {p1, v2, v0, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->menuRefresh:Landroid/view/MenuItem;

    .line 1145
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->menuRefresh:Landroid/view/MenuItem;

    const v4, 0x7f08017b

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1146
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->menuRefresh:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1149
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    if-eqz v0, :cond_113

    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->isManager()Z

    move-result v0

    if-nez v0, :cond_e1

    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->isDispatcher()Z

    move-result v0

    if-eqz v0, :cond_113

    :cond_e1
    const-string v0, "Filter"

    .line 1150
    invoke-interface {p1, v0}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    const v0, 0x7f080131

    .line 1151
    invoke-interface {p1, v0}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    const/16 v0, 0x1b59

    const-string v4, "All calls"

    .line 1153
    invoke-interface {p1, v3, v0, v3, v4}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/16 v0, 0x1b5a

    const-string v4, "Only assigned calls"

    .line 1154
    invoke-interface {p1, v3, v0, v3, v4}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1156
    invoke-interface {p1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/towbook/mobile/CallListActivity;->menuCallFilter:Landroid/view/MenuItem;

    .line 1157
    iget-object p1, p0, Lcom/towbook/mobile/CallListActivity;->menuCallFilter:Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1158
    iget-object p1, p0, Lcom/towbook/mobile/CallListActivity;->menuCallFilter:Landroid/view/MenuItem;

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1161
    :cond_113
    iget-boolean p1, p0, Lcom/towbook/mobile/CallListActivity;->mIsRefreshing:Z

    if-eqz p1, :cond_11f

    .line 1162
    iget-object p1, p0, Lcom/towbook/mobile/CallListActivity;->menuRefresh:Landroid/view/MenuItem;

    const v0, 0x7f0b002a

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    :cond_11f
    return v1
.end method

.method protected onDestroy()V
    .registers 3

    const-string v0, "CallListActivity"

    const-string v1, "onDestroy()..."

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 242
    :try_start_c
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mReceiver:Lcom/towbook/mobile/CallListActivity$PusherActionReceiver;

    if-eqz v0, :cond_15

    .line 243
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mReceiver:Lcom/towbook/mobile/CallListActivity$PusherActionReceiver;

    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    :cond_15
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mDataSaverChangedBroadcastReceiver:Lcom/towbook/mobile/CallListActivity$DataSaverChangedBroadcastReceiver;

    if-eqz v0, :cond_1e

    .line 245
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mDataSaverChangedBroadcastReceiver:Lcom/towbook/mobile/CallListActivity$DataSaverChangedBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    :cond_1e
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2c

    .line 247
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/towbook/mobile/CallListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    .line 253
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mIsRunning:Ljava/lang/Boolean;

    .line 255
    invoke-super {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->onDestroy()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7

    .line 907
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->menuRefresh:Landroid/view/MenuItem;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    .line 908
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->refreshCalls()V

    goto :goto_68

    .line 909
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v2, 0x1b59

    const/4 v3, 0x1

    const/16 v4, 0x1b5a

    if-eq v0, v2, :cond_5d

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v4, :cond_1b

    goto :goto_5d

    .line 912
    :cond_1b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_25

    .line 913
    invoke-direct {p0, v2}, Lcom/towbook/mobile/CallListActivity;->filterListResponseByCompanyId(I)V

    .line 916
    :cond_25
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    invoke-virtual {v0}, Lcom/towbook/api/ConfigSettings;->getCompanies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_68

    .line 917
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mConfigs:Lcom/towbook/api/ConfigSettings;

    invoke-virtual {v0}, Lcom/towbook/api/ConfigSettings;->getCompanies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3f
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/Company;

    .line 918
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2}, Lcom/towbook/api/Company;->getId()I

    move-result v4

    if-ne v3, v4, :cond_3f

    .line 919
    invoke-virtual {v2}, Lcom/towbook/api/Company;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/towbook/mobile/CallListActivity;->filterListResponseByCompanyId(I)V

    goto :goto_3f

    .line 910
    :cond_5d
    :goto_5d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-ne p1, v4, :cond_64

    goto :goto_65

    :cond_64
    const/4 v3, 0x0

    :goto_65
    invoke-direct {p0, v3}, Lcom/towbook/mobile/CallListActivity;->filterCalls(Z)V

    :cond_68
    :goto_68
    return v1
.end method

.method public onNavigationItemSelected(IJ)Z
    .registers 6

    const-string v0, "TowbookDebug:"

    .line 1315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    .line 1361
    iget-object v0, p0, Lcom/towbook/mobile/CallListActivity;->mActionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    const-string v0, "CallListActivity"

    .line 1362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current tab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "tab_calls_current"

    .line 1363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 211
    invoke-super {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->onPause()V

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/towbook/mobile/CallListActivity;->mWasPreviouslyPaused:Z

    const-string v0, "CallListActivity"

    const-string v1, "onPause()..."

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3

    const-string v0, ""

    .line 1090
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1091
    invoke-direct {p0, p1}, Lcom/towbook/mobile/CallListActivity;->search(Ljava/lang/String;)V

    goto :goto_12

    .line 1093
    :cond_c
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->GenDataSub()V

    .line 1094
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->handleView()V

    .line 1097
    :goto_12
    iput-object p1, p0, Lcom/towbook/mobile/CallListActivity;->searchViewKeyword:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3

    .line 1103
    new-instance v0, Lcom/towbook/mobile/CallListActivity$6;

    invoke-direct {v0, p0, p0, p1}, Lcom/towbook/mobile/CallListActivity$6;-><init>(Lcom/towbook/mobile/CallListActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0}, Lcom/towbook/mobile/CallListActivity$6;->start()Lcom/towbook/mobile/task/CallSearchQuickListTask;

    .line 1113
    iput-object p1, p0, Lcom/towbook/mobile/CallListActivity;->searchViewKeyword:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 259
    invoke-super {p0, p1, p2, p3}, Lcom/towbook/mobile/BaseSlidingActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x1b58

    if-eq p1, p2, :cond_8

    goto :goto_2b

    .line 263
    :cond_8
    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-le p1, v0, :cond_15

    aget p1, p3, p2

    if-nez p1, :cond_15

    aget p1, p3, v0

    if-eqz p1, :cond_1c

    :cond_15
    array-length p1, p3

    if-ne p1, v0, :cond_22

    aget p1, p3, p2

    if-nez p1, :cond_22

    .line 265
    :cond_1c
    iget-object p1, p0, Lcom/towbook/mobile/CallListActivity;->mCurrentCompanyId:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/towbook/mobile/CallListActivity;->newOnSceneCallForm(Ljava/lang/Integer;)V

    goto :goto_2b

    :cond_22
    const-string p1, "Camera"

    const-string p2, "Create On Scene call"

    const-string p3, "android.permission.CAMERA"

    .line 267
    invoke-static {p0, p1, p2, p3}, Lcom/towbook/utils/AppUtils;->handleRequestPermissionResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void
.end method

.method public onResume()V
    .registers 5

    .line 220
    invoke-super {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->onResume()V

    const-string v0, "CallListActivity"

    const-string v1, "onResume()..."

    .line 222
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DISPATCHING"

    .line 225
    invoke-static {p0, v0}, Lcom/towbook/utils/AppUtils;->updateMenuSelection(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "current_call_filter"

    .line 226
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/towbook/mobile/CallListActivity;->searchViewKeyword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/towbook/mobile/CallListActivity$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/CallListActivity$$Lambda$0;-><init>(Lcom/towbook/mobile/CallListActivity;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_39

    :cond_2d
    const-string v1, "only_assigned"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    .line 231
    invoke-direct {p0, v0}, Lcom/towbook/mobile/CallListActivity;->filterCalls(Z)V

    :cond_39
    :goto_39
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "last_orientation"

    .line 1309
    invoke-virtual {p0}, Lcom/towbook/mobile/CallListActivity;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1310
    invoke-super {p0, p1}, Lcom/towbook/mobile/BaseSlidingActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .registers 3

    const-string v0, "CallListActivity"

    const-string v1, "onStart()..."

    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-super {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->onStart()V

    .line 199
    invoke-static {p0}, Lcom/towbook/mobile/service/PusherService;->start(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 204
    invoke-super {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->onStop()V

    const-string v0, "CallListActivity"

    const-string v1, "onStop()..."

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .registers 3

    .line 1383
    :try_start_0
    iget-object p1, p0, Lcom/towbook/mobile/CallListActivity;->searchViewKeyword:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 1387
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .registers 5

    const-string p2, "CallListActivity"

    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current tab : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget-object p2, p0, Lcom/towbook/mobile/CallListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    const-string p2, "tab_calls_current"

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .registers 3

    return-void
.end method

.method public onUpdateDriverTruck(Lcom/towbook/api/Call;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/towbook/api/Call;",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/AssetDriverTruck;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateStatus(Lcom/towbook/api/Call;Lcom/towbook/api/Status;Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/towbook/api/Call;",
            "Lcom/towbook/api/Status;",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/AssetDriverTruck;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_49

    .line 1451
    invoke-virtual {p2}, Lcom/towbook/api/Status;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1f

    .line 1452
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/towbook/mobile/CallCompleteActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "call"

    .line 1453
    invoke-static {p1}, Lcom/towbook/api/core/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x68

    .line 1460
    invoke-virtual {p0, p2, p1}, Lcom/towbook/mobile/CallListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_49

    :cond_1f
    const/4 v0, 0x0

    .line 1464
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    .line 1466
    invoke-virtual {p1}, Lcom/towbook/api/Call;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/towbook/api/Asset;

    :cond_36
    move-object v7, v0

    .line 1468
    new-instance v0, Lcom/towbook/mobile/CallListActivity$8;

    invoke-virtual {p1}, Lcom/towbook/api/Call;->getId()I

    move-result v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/towbook/mobile/CallListActivity$8;-><init>(Lcom/towbook/mobile/CallListActivity;Landroid/content/Context;ILcom/towbook/api/Status;Ljava/util/List;Lcom/towbook/api/Asset;Lcom/towbook/api/Status;)V

    .line 1493
    invoke-virtual {v0}, Lcom/towbook/mobile/CallListActivity$8;->start()Lcom/towbook/mobile/task/UpdateStatusTask;

    :cond_49
    :goto_49
    return-void
.end method

.method public updateListUI(Lcom/towbook/api/Call;)V
    .registers 4

    .line 1269
    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 1270
    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 1272
    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2e

    .line 1274
    :cond_1c
    sget-object v1, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 1276
    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    .line 1277
    sget-object v0, Lcom/towbook/mobile/CallListActivity;->listResponse:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1283
    :goto_2e
    invoke-direct {p0}, Lcom/towbook/mobile/CallListActivity;->GenDataSub()V

    .line 1285
    sget p1, Lcom/towbook/mobile/CallListActivity;->limit:I

    invoke-direct {p0, p1}, Lcom/towbook/mobile/CallListActivity;->updateTabsUi(I)V

    return-void
.end method
