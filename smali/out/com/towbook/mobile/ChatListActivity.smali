.class public Lcom/towbook/mobile/ChatListActivity;
.super Lcom/towbook/mobile/BaseSlidingActivity;
.source "ChatListActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;,
        Lcom/towbook/mobile/ChatListActivity$AppSectionsPagerAdapter;
    }
.end annotation


# static fields
.field private static final CURRENT_TAB:Ljava/lang/String; = "tab_chat_current"

.field private static final TAG:Ljava/lang/String; = "ChatListActivity"

.field private static limit:I = 0x3

.field public static listResponse:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/Chat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionBar:Landroid/support/v7/app/ActionBar;

.field private adapter:Lcom/towbook/mobile/adapter/ChatAdapter;

.field private allReleasedLoaded:Z

.field private configs:Lcom/towbook/api/ConfigSettings;

.field private handler:Landroid/os/Handler;

.field private isRefreshing:Z

.field private lastPageIndex:I

.field private mAppSectionsPagerAdapter:Lcom/towbook/mobile/ChatListActivity$AppSectionsPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mapFragment:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field menuRefresh:Landroid/view/MenuItem;

.field private mnRefresh:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0f01bc
    .end annotation
.end field

.field private receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

.field private releasedIndex:I

.field private releasedTop:I

.field private searchViewKeyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/towbook/mobile/ChatListActivity;->listResponse:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcom/towbook/mobile/BaseSlidingActivity;-><init>()V

    const-string v0, ""

    .line 60
    iput-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->searchViewKeyword:Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/towbook/mobile/ChatListActivity;->isRefreshing:Z

    .line 66
    iput-boolean v0, p0, Lcom/towbook/mobile/ChatListActivity;->allReleasedLoaded:Z

    const/4 v0, 0x1

    .line 67
    iput v0, p0, Lcom/towbook/mobile/ChatListActivity;->lastPageIndex:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->handler:Landroid/os/Handler;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->mapFragment:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100(Lcom/towbook/mobile/ChatListActivity;)Landroid/support/v4/view/ViewPager;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/towbook/mobile/ChatListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/towbook/mobile/ChatListActivity;)Ljava/util/HashMap;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/towbook/mobile/ChatListActivity;->mapFragment:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/towbook/mobile/ChatListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/towbook/mobile/ChatListActivity;->sortById(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$402(Lcom/towbook/mobile/ChatListActivity;Z)Z
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/towbook/mobile/ChatListActivity;->isRefreshing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/towbook/mobile/ChatListActivity;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/towbook/mobile/ChatListActivity;->initView()V

    return-void
.end method

.method static synthetic access$608(Lcom/towbook/mobile/ChatListActivity;)I
    .registers 3

    .line 50
    iget v0, p0, Lcom/towbook/mobile/ChatListActivity;->lastPageIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/towbook/mobile/ChatListActivity;->lastPageIndex:I

    return v0
.end method

.method static synthetic access$700()I
    .registers 1

    .line 50
    sget v0, Lcom/towbook/mobile/ChatListActivity;->limit:I

    return v0
.end method

.method static synthetic access$800(Lcom/towbook/mobile/ChatListActivity;)Landroid/support/v7/app/ActionBar;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/towbook/mobile/ChatListActivity;)Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/towbook/mobile/ChatListActivity;->searchViewKeyword:Ljava/lang/String;

    return-object p0
.end method

.method private checkConnectivity()V
    .registers 2

    .line 381
    invoke-virtual {p0}, Lcom/towbook/mobile/ChatListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/towbook/mobile/classes/ConnectionHelper;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 382
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/ChatListActivity;->hideConnectivityBar(Z)V

    goto :goto_13

    :cond_f
    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/ChatListActivity;->hideConnectivityBar(Z)V

    :goto_13
    return-void
.end method

.method private initView()V
    .registers 6

    const v0, 0x7f0902e1

    .line 100
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/ChatListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 101
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViewsInLayout()V

    .line 103
    invoke-virtual {p0}, Lcom/towbook/mobile/ChatListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 105
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    const-string v1, "Chats"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->mapFragment:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 108
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->removeAllTabs()V

    .line 111
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    const-string v1, "Company"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Active"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    const-string v3, "Complete"

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    .line 116
    new-instance v3, Lcom/towbook/mobile/ChatListActivity$AppSectionsPagerAdapter;

    invoke-virtual {p0}, Lcom/towbook/mobile/ChatListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/towbook/mobile/ChatListActivity$AppSectionsPagerAdapter;-><init>(Lcom/towbook/mobile/ChatListActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v3, p0, Lcom/towbook/mobile/ChatListActivity;->mAppSectionsPagerAdapter:Lcom/towbook/mobile/ChatListActivity$AppSectionsPagerAdapter;

    .line 118
    iget-object v3, p0, Lcom/towbook/mobile/ChatListActivity;->mAppSectionsPagerAdapter:Lcom/towbook/mobile/ChatListActivity$AppSectionsPagerAdapter;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 119
    iget-object v3, p0, Lcom/towbook/mobile/ChatListActivity;->mAppSectionsPagerAdapter:Lcom/towbook/mobile/ChatListActivity$AppSectionsPagerAdapter;

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 120
    iget-object v3, p0, Lcom/towbook/mobile/ChatListActivity;->mAppSectionsPagerAdapter:Lcom/towbook/mobile/ChatListActivity$AppSectionsPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 122
    iget-object v3, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 123
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 124
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 126
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    monitor-enter v0

    .line 127
    :try_start_7d
    iget-object v1, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_bd

    .line 130
    iget-object v1, p0, Lcom/towbook/mobile/ChatListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    monitor-enter v1

    .line 131
    :try_start_86
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 132
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_ba

    .line 134
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/towbook/mobile/ChatListActivity;->mAppSectionsPagerAdapter:Lcom/towbook/mobile/ChatListActivity$AppSectionsPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 135
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/towbook/mobile/ChatListActivity;->mAppSectionsPagerAdapter:Lcom/towbook/mobile/ChatListActivity$AppSectionsPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    const-string v0, "tab_chat_current"

    .line 139
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 142
    :try_start_a7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ab} :catch_ac

    goto :goto_ad

    :catch_ac
    const/4 v0, 0x0

    .line 147
    :goto_ad
    iget-object v2, p0, Lcom/towbook/mobile/ChatListActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 148
    invoke-virtual {p0}, Lcom/towbook/mobile/ChatListActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    return-void

    :catchall_ba
    move-exception v0

    .line 132
    :try_start_bb
    monitor-exit v1
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v0

    :catchall_bd
    move-exception v1

    .line 128
    :try_start_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v1
.end method

.method private refreshChats()V
    .registers 3

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/towbook/mobile/ChatListActivity;->isRefreshing:Z

    .line 289
    invoke-virtual {p0}, Lcom/towbook/mobile/ChatListActivity;->supportInvalidateOptionsMenu()V

    .line 291
    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->cachedUsers:Ljava/util/List;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/towbook/mobile/TowbookApplication;->cachedUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 292
    :cond_12
    invoke-static {p0}, Lcom/towbook/mobile/TowbookApplication;->refreshCachedUsers(Landroid/content/Context;)V

    .line 294
    :cond_15
    new-instance v0, Lcom/towbook/mobile/ChatListActivity$2;

    iget v1, p0, Lcom/towbook/mobile/ChatListActivity;->lastPageIndex:I

    invoke-direct {v0, p0, p0, v1}, Lcom/towbook/mobile/ChatListActivity$2;-><init>(Lcom/towbook/mobile/ChatListActivity;Landroid/content/Context;I)V

    .line 316
    invoke-virtual {v0}, Lcom/towbook/mobile/ChatListActivity$2;->start()Lcom/towbook/mobile/task/ChatLoadMoreTask;

    return-void
.end method

.method private sortById(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/Chat;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/Chat;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/Chat;

    .line 324
    invoke-virtual {v2}, Lcom/towbook/api/Chat;->getLastMessage()Lcom/towbook/api/Message;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 325
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 327
    :cond_24
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 330
    :cond_28
    new-instance p1, Lcom/towbook/mobile/ChatListActivity$3;

    invoke-direct {p1, p0}, Lcom/towbook/mobile/ChatListActivity$3;-><init>(Lcom/towbook/mobile/ChatListActivity;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 341
    new-instance p1, Lcom/towbook/mobile/ChatListActivity$4;

    invoke-direct {p1, p0}, Lcom/towbook/mobile/ChatListActivity$4;-><init>(Lcom/towbook/mobile/ChatListActivity;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 352
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public hideUnreadsBar(Z)V
    .registers 4

    const v0, 0x7f090472

    .line 506
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/ChatListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_11

    const/16 p1, 0x8

    .line 509
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e

    :cond_11
    const/4 p1, 0x0

    .line 510
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception p1

    const-string v0, "ChatListActivity"

    const-string v1, "Exception"

    .line 513
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 79
    invoke-super {p0, p1}, Lcom/towbook/mobile/BaseSlidingActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0053

    .line 81
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/ChatListActivity;->setContentView(I)V

    .line 83
    new-instance v0, Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;-><init>(Lcom/towbook/mobile/ChatListActivity;Lcom/towbook/mobile/ChatListActivity$1;)V

    iput-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    .line 84
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/ChatListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "new_chat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/ChatListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/ChatListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "new_message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/ChatListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/ChatListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "message_read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/ChatListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "tab_chat_current"

    .line 88
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v0, "tab_chat_current"

    const-string v1, "0"

    .line 89
    invoke-static {v0, v1, p0}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 92
    :cond_90
    invoke-direct {p0}, Lcom/towbook/mobile/ChatListActivity;->initView()V

    if-nez p1, :cond_98

    .line 95
    invoke-direct {p0}, Lcom/towbook/mobile/ChatListActivity;->refreshChats()V

    :cond_98
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    .line 220
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->mnRefresh:Ljava/lang/String;

    const/4 v1, 0x2

    const v2, 0x7f080198

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/towbook/mobile/ChatListActivity;->menuRefresh:Landroid/view/MenuItem;

    .line 221
    iget-object p1, p0, Lcom/towbook/mobile/ChatListActivity;->menuRefresh:Landroid/view/MenuItem;

    const v0, 0x7f08017b

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 222
    iget-object p1, p0, Lcom/towbook/mobile/ChatListActivity;->menuRefresh:Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 224
    iget-boolean p1, p0, Lcom/towbook/mobile/ChatListActivity;->isRefreshing:Z

    if-eqz p1, :cond_29

    .line 225
    iget-object p1, p0, Lcom/towbook/mobile/ChatListActivity;->menuRefresh:Landroid/view/MenuItem;

    const v0, 0x7f0b002a

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .registers 3

    .line 370
    invoke-super {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 372
    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->chatListActivity:Lcom/towbook/mobile/ChatListActivity;

    .line 374
    iget-object v1, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    if-eqz v1, :cond_11

    .line 375
    iget-object v1, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    invoke-virtual {p0, v1}, Lcom/towbook/mobile/ChatListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 376
    iput-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    :cond_11
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
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->menuRefresh:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    .line 234
    iput p1, p0, Lcom/towbook/mobile/ChatListActivity;->lastPageIndex:I

    .line 235
    invoke-direct {p0}, Lcom/towbook/mobile/ChatListActivity;->refreshChats()V

    :cond_a
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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    .line 245
    invoke-super {p0, p1}, Lcom/towbook/mobile/BaseSlidingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 3

    .line 390
    invoke-super {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->onPause()V

    const/4 v0, 0x0

    .line 392
    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->chatListActivity:Lcom/towbook/mobile/ChatListActivity;

    .line 394
    iget-object v1, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    if-eqz v1, :cond_11

    .line 395
    iget-object v1, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    invoke-virtual {p0, v1}, Lcom/towbook/mobile/ChatListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 396
    iput-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    :cond_11
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected onResume()V
    .registers 5

    .line 402
    invoke-super {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->onResume()V

    .line 403
    invoke-direct {p0}, Lcom/towbook/mobile/ChatListActivity;->checkConnectivity()V

    .line 405
    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->chatListActivity:Lcom/towbook/mobile/ChatListActivity;

    const/4 v0, 0x1

    .line 406
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/ChatListActivity;->hideUnreadsBar(Z)V

    .line 408
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    if-nez v0, :cond_84

    .line 409
    new-instance v0, Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;-><init>(Lcom/towbook/mobile/ChatListActivity;Lcom/towbook/mobile/ChatListActivity$1;)V

    iput-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    .line 410
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/ChatListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "new_chat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/ChatListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 411
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/ChatListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "message_read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/ChatListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->receiver:Lcom/towbook/mobile/ChatListActivity$PusherActionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/ChatListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "new_message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/ChatListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_84
    return-void
.end method

.method public updateListUI(Lcom/towbook/api/Chat;)V
    .registers 4

    .line 255
    sget-object v0, Lcom/towbook/mobile/ChatListActivity;->listResponse:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/towbook/mobile/ChatListActivity;->listResponse:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 256
    sget-object v0, Lcom/towbook/mobile/ChatListActivity;->listResponse:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 258
    sget-object v0, Lcom/towbook/mobile/ChatListActivity;->listResponse:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2e

    .line 260
    :cond_1c
    sget-object v1, Lcom/towbook/mobile/ChatListActivity;->listResponse:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 262
    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/towbook/mobile/ChatListActivity;->listResponse:Ljava/util/ArrayList;

    .line 263
    sget-object v0, Lcom/towbook/mobile/ChatListActivity;->listResponse:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :goto_2e
    sget-object p1, Lcom/towbook/mobile/ChatListActivity;->listResponse:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/towbook/mobile/ChatListActivity;->sortById(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    sput-object p1, Lcom/towbook/mobile/ChatListActivity;->listResponse:Ljava/util/ArrayList;

    const-string p1, "list_chat"

    .line 269
    sget-object v0, Lcom/towbook/mobile/ChatListActivity;->listResponse:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/towbook/api/core/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 271
    sget p1, Lcom/towbook/mobile/ChatListActivity;->limit:I

    .line 272
    iget-object v0, p0, Lcom/towbook/mobile/ChatListActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/towbook/mobile/ChatListActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/towbook/mobile/ChatListActivity$1;-><init>(Lcom/towbook/mobile/ChatListActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public viewChatDetails(Lcom/towbook/api/Chat;)V
    .registers 5

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/ChatViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "chatId"

    .line 213
    invoke-virtual {p1}, Lcom/towbook/api/Chat;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "name"

    .line 214
    invoke-virtual {p1}, Lcom/towbook/api/Chat;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/ChatListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
