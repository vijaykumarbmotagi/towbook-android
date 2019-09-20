.class public Lcom/towbook/mobile/ChatViewActivity;
.super Lcom/towbook/mobile/BaseActivity;
.source "ChatViewActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;
    }
.end annotation

.annotation runtime Lroboguice/inject/ContentView;
    value = 0x7f0b0056
.end annotation


# static fields
.field public static chatId:I

.field public static chatName:Ljava/lang/String;


# instance fields
.field adapter:Lcom/towbook/mobile/adapter/MessageAdapter;

.field private allMessagesLoaded:Z

.field private chatNonceId:J

.field private chatTempMessageId:I

.field private failedMessageIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field isRefreshing:Z

.field private lastMessageNonceId:J

.field private lvMessages:Landroid/widget/ListView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f09028b
    .end annotation
.end field

.field menuAddParticipants:Landroid/view/MenuItem;

.field menuPeople:Landroid/view/MenuItem;

.field menuRefresh:Landroid/view/MenuItem;

.field private messageContent:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0902a9
    .end annotation
.end field

.field private messageIndex:I

.field private messagePageNumber:I

.field private messagePageSize:I

.field private messageTop:I

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mnMore:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0f01b5
    .end annotation
.end field

.field private mnRefresh:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0f01bc
    .end annotation
.end field

.field private participantIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

.field private rivSendMessage:Lcom/melnykov/fab/FloatingActionButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901c7
    .end annotation
.end field

.field private sendingMessageIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sendingMessageNonceIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private tvNoMessages:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f09052c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/towbook/mobile/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/towbook/mobile/ChatViewActivity;->isRefreshing:Z

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageIds:Ljava/util/ArrayList;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/towbook/mobile/ChatViewActivity;->failedMessageIds:Ljava/util/ArrayList;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageNonceIds:Ljava/util/ArrayList;

    const/16 v1, -0x2710

    .line 72
    iput v1, p0, Lcom/towbook/mobile/ChatViewActivity;->chatTempMessageId:I

    const/4 v1, 0x1

    .line 75
    iput v1, p0, Lcom/towbook/mobile/ChatViewActivity;->messagePageNumber:I

    const/16 v1, 0x1e

    .line 76
    iput v1, p0, Lcom/towbook/mobile/ChatViewActivity;->messagePageSize:I

    .line 78
    iput-boolean v0, p0, Lcom/towbook/mobile/ChatViewActivity;->allMessagesLoaded:Z

    return-void
.end method

.method static synthetic access$100(Lcom/towbook/mobile/ChatViewActivity;)Landroid/widget/EditText;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/towbook/mobile/ChatViewActivity;->messageContent:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/towbook/mobile/ChatViewActivity;I)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/towbook/mobile/ChatViewActivity;->findAndUpdateMessageRow(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/towbook/mobile/ChatViewActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/towbook/mobile/ChatViewActivity;->messages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/towbook/mobile/ChatViewActivity;Ljava/util/ArrayList;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/towbook/mobile/ChatViewActivity;->fillMessages(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/towbook/mobile/ChatViewActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/towbook/mobile/ChatViewActivity;I)Landroid/widget/TableRow;
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/towbook/mobile/ChatViewActivity;->findMessageRow(I)Landroid/widget/TableRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/towbook/mobile/ChatViewActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/towbook/mobile/ChatViewActivity;->failedMessageIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/towbook/mobile/ChatViewActivity;)I
    .registers 1

    .line 45
    iget p0, p0, Lcom/towbook/mobile/ChatViewActivity;->messagePageSize:I

    return p0
.end method

.method static synthetic access$1700(Lcom/towbook/mobile/ChatViewActivity;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/towbook/mobile/ChatViewActivity;->getLastMessageAndRead()V

    return-void
.end method

.method static synthetic access$1800(Lcom/towbook/mobile/ChatViewActivity;)J
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/towbook/mobile/ChatViewActivity;->lastMessageNonceId:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/towbook/mobile/ChatViewActivity;J)J
    .registers 3

    .line 45
    iput-wide p1, p0, Lcom/towbook/mobile/ChatViewActivity;->lastMessageNonceId:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/towbook/mobile/ChatViewActivity;Ljava/lang/Long;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/towbook/mobile/ChatViewActivity;->findAndUpdateNonceRow(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$200(Lcom/towbook/mobile/ChatViewActivity;Ljava/lang/String;)Lcom/towbook/api/Message;
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/towbook/mobile/ChatViewActivity;->parseSentMessage(Ljava/lang/String;)Lcom/towbook/api/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/towbook/mobile/ChatViewActivity;ILcom/towbook/api/Message;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/towbook/mobile/ChatViewActivity;->attemptToSendMessage(ILcom/towbook/api/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/towbook/mobile/ChatViewActivity;)Landroid/widget/ListView;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/towbook/mobile/ChatViewActivity;->lvMessages:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/towbook/mobile/ChatViewActivity;I)I
    .registers 2

    .line 45
    iput p1, p0, Lcom/towbook/mobile/ChatViewActivity;->messageIndex:I

    return p1
.end method

.method static synthetic access$602(Lcom/towbook/mobile/ChatViewActivity;I)I
    .registers 2

    .line 45
    iput p1, p0, Lcom/towbook/mobile/ChatViewActivity;->messageTop:I

    return p1
.end method

.method static synthetic access$700(Lcom/towbook/mobile/ChatViewActivity;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/towbook/mobile/ChatViewActivity;->allMessagesLoaded:Z

    return p0
.end method

.method static synthetic access$702(Lcom/towbook/mobile/ChatViewActivity;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/towbook/mobile/ChatViewActivity;->allMessagesLoaded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/towbook/mobile/ChatViewActivity;IZ)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/towbook/mobile/ChatViewActivity;->getMessagesForChat(IZ)V

    return-void
.end method

.method static synthetic access$902(Lcom/towbook/mobile/ChatViewActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/towbook/mobile/ChatViewActivity;->participantIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method private attemptToSendMessage(ILcom/towbook/api/Message;)V
    .registers 11

    .line 252
    invoke-virtual {p0}, Lcom/towbook/mobile/ChatViewActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/towbook/mobile/ChatViewActivity;->chatNonceId:J

    .line 255
    iget v0, p0, Lcom/towbook/mobile/ChatViewActivity;->chatTempMessageId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/towbook/mobile/ChatViewActivity;->chatTempMessageId:I

    .line 256
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageIds:Ljava/util/ArrayList;

    iget v1, p0, Lcom/towbook/mobile/ChatViewActivity;->chatTempMessageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageNonceIds:Ljava/util/ArrayList;

    iget-wide v1, p0, Lcom/towbook/mobile/ChatViewActivity;->chatNonceId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-wide v0, p0, Lcom/towbook/mobile/ChatViewActivity;->chatNonceId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/towbook/api/Message;->setNonce(Ljava/lang/Long;)V

    .line 260
    iget v0, p0, Lcom/towbook/mobile/ChatViewActivity;->chatTempMessageId:I

    invoke-virtual {p2, v0}, Lcom/towbook/api/Message;->setId(I)V

    .line 262
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->messages:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/towbook/mobile/ChatViewActivity;->fillMessages(Ljava/util/ArrayList;)V

    .line 265
    new-instance v0, Lcom/towbook/mobile/ChatViewActivity$5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p2

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/towbook/mobile/ChatViewActivity$5;-><init>(Lcom/towbook/mobile/ChatViewActivity;Landroid/content/Context;ILcom/towbook/api/Message;Lcom/towbook/api/Message;I)V

    .line 315
    invoke-virtual {v0}, Lcom/towbook/mobile/ChatViewActivity$5;->execute()V

    .line 318
    iget-object p1, p0, Lcom/towbook/mobile/ChatViewActivity;->messageContent:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p1, p0, Lcom/towbook/mobile/ChatViewActivity;->lvMessages:Landroid/widget/ListView;

    new-instance p2, Lcom/towbook/mobile/ChatViewActivity$6;

    invoke-direct {p2, p0}, Lcom/towbook/mobile/ChatViewActivity$6;-><init>(Lcom/towbook/mobile/ChatViewActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    const/16 p1, 0x8

    .line 327
    invoke-direct {p0, p1}, Lcom/towbook/mobile/ChatViewActivity;->handleNoMessageText(I)V

    return-void
.end method

.method private checkConnectivity()V
    .registers 2

    .line 133
    invoke-virtual {p0}, Lcom/towbook/mobile/ChatViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/towbook/mobile/classes/ConnectionHelper;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/ChatViewActivity;->hideConnectivityBar(Z)V

    goto :goto_13

    :cond_f
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/ChatViewActivity;->hideConnectivityBar(Z)V

    :goto_13
    return-void
.end method

.method private fillMessages(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/Message;",
            ">;)V"
        }
    .end annotation

    .line 507
    invoke-direct {p0, p1}, Lcom/towbook/mobile/ChatViewActivity;->sortByDateReceived(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 509
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->adapter:Lcom/towbook/mobile/adapter/MessageAdapter;

    if-nez v0, :cond_f

    .line 510
    new-instance v0, Lcom/towbook/mobile/adapter/MessageAdapter;

    invoke-direct {v0, p0, p1}, Lcom/towbook/mobile/adapter/MessageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->adapter:Lcom/towbook/mobile/adapter/MessageAdapter;

    .line 512
    :cond_f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1b

    const/16 v0, 0x8

    .line 513
    invoke-direct {p0, v0}, Lcom/towbook/mobile/ChatViewActivity;->handleNoMessageText(I)V

    goto :goto_1f

    :cond_1b
    const/4 v0, 0x0

    .line 515
    invoke-direct {p0, v0}, Lcom/towbook/mobile/ChatViewActivity;->handleNoMessageText(I)V

    .line 517
    :goto_1f
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->lvMessages:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 518
    iget-object p1, p0, Lcom/towbook/mobile/ChatViewActivity;->lvMessages:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->adapter:Lcom/towbook/mobile/adapter/MessageAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_39

    .line 520
    :cond_2f
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->adapter:Lcom/towbook/mobile/adapter/MessageAdapter;

    invoke-virtual {v0, p1}, Lcom/towbook/mobile/adapter/MessageAdapter;->setList(Ljava/util/ArrayList;)V

    .line 521
    iget-object p1, p0, Lcom/towbook/mobile/ChatViewActivity;->adapter:Lcom/towbook/mobile/adapter/MessageAdapter;

    invoke-virtual {p1}, Lcom/towbook/mobile/adapter/MessageAdapter;->notifyDataSetChanged()V

    .line 525
    :goto_39
    iget-object p1, p0, Lcom/towbook/mobile/ChatViewActivity;->lvMessages:Landroid/widget/ListView;

    new-instance v0, Lcom/towbook/mobile/ChatViewActivity$8;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/ChatViewActivity$8;-><init>(Lcom/towbook/mobile/ChatViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private findAndUpdateMessageRow(I)V
    .registers 6

    .line 416
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 418
    :goto_1a
    iget-object v2, p0, Lcom/towbook/mobile/ChatViewActivity;->lvMessages:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_84

    .line 419
    iget-object v2, p0, Lcom/towbook/mobile/ChatViewActivity;->lvMessages:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    const v3, 0x7f0902a9

    .line 420
    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_81

    .line 421
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_81

    .line 422
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_81

    .line 424
    iget-object v1, p0, Lcom/towbook/mobile/ChatViewActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4f
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/Message;

    .line 425
    invoke-virtual {v2}, Lcom/towbook/api/Message;->getId()I

    move-result v2

    if-ne v2, p1, :cond_4f

    const/4 v2, 0x0

    .line 426
    :goto_62
    iget-object v3, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 427
    iget-object v3, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_7e

    .line 429
    iget-object v3, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4f

    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_84
    return-void
.end method

.method private findAndUpdateNonceRow(Ljava/lang/Long;)V
    .registers 6

    .line 451
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageNonceIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 452
    invoke-virtual {v1, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 453
    :goto_1a
    iget-object v2, p0, Lcom/towbook/mobile/ChatViewActivity;->lvMessages:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_84

    .line 454
    iget-object v2, p0, Lcom/towbook/mobile/ChatViewActivity;->lvMessages:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    const v3, 0x7f0902a9

    .line 455
    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_81

    .line 456
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_81

    .line 457
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-ne v2, p1, :cond_81

    .line 459
    iget-object v1, p0, Lcom/towbook/mobile/ChatViewActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_53
    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/Message;

    .line 460
    invoke-virtual {v2}, Lcom/towbook/api/Message;->getNonce()Ljava/lang/Long;

    move-result-object v2

    if-ne v2, p1, :cond_53

    const/4 v2, 0x0

    .line 461
    :goto_66
    iget-object v3, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageNonceIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_53

    .line 462
    iget-object v3, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageNonceIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-ne v3, p1, :cond_7e

    .line 464
    iget-object v3, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageNonceIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_53

    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_84
    return-void
.end method

.method private findMessageRow(I)Landroid/widget/TableRow;
    .registers 7

    .line 478
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 480
    :goto_1a
    iget-object v2, p0, Lcom/towbook/mobile/ChatViewActivity;->lvMessages:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_7f

    .line 481
    iget-object v2, p0, Lcom/towbook/mobile/ChatViewActivity;->lvMessages:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    const v3, 0x7f0902a9

    .line 482
    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_7c

    .line 483
    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7c

    .line 484
    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_7c

    .line 486
    iget-object v1, p0, Lcom/towbook/mobile/ChatViewActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/towbook/api/Message;

    .line 487
    invoke-virtual {v3}, Lcom/towbook/api/Message;->getId()I

    move-result v3

    if-ne v3, p1, :cond_4f

    const/4 v3, 0x0

    .line 488
    :goto_62
    iget-object v4, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4f

    .line 489
    iget-object v4, p0, Lcom/towbook/mobile/ChatViewActivity;->sendingMessageIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_79

    return-object v2

    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_7f
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCurrentChat()V
    .registers 3

    .line 211
    new-instance v0, Lcom/towbook/mobile/ChatViewActivity$3;

    sget v1, Lcom/towbook/mobile/ChatViewActivity;->chatId:I

    invoke-direct {v0, p0, p0, v1}, Lcom/towbook/mobile/ChatViewActivity$3;-><init>(Lcom/towbook/mobile/ChatViewActivity;Landroid/content/Context;I)V

    .line 221
    invoke-virtual {v0}, Lcom/towbook/mobile/ChatViewActivity$3;->execute()V

    return-void
.end method

.method private getLastMessageAndRead()V
    .registers 5

    .line 228
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->messages:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 229
    new-instance v0, Lcom/towbook/mobile/ChatViewActivity$4;

    sget v1, Lcom/towbook/mobile/ChatViewActivity;->chatId:I

    iget-object v2, p0, Lcom/towbook/mobile/ChatViewActivity;->messages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/towbook/api/Message;

    invoke-virtual {v2}, Lcom/towbook/api/Message;->getId()I

    move-result v2

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/towbook/mobile/ChatViewActivity$4;-><init>(Lcom/towbook/mobile/ChatViewActivity;Landroid/content/Context;II)V

    .line 240
    invoke-virtual {v0}, Lcom/towbook/mobile/ChatViewActivity$4;->execute()V

    :cond_23
    return-void
.end method

.method private getMessagesForChat(IZ)V
    .registers 9

    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lcom/towbook/mobile/ChatViewActivity;->isRefreshing:Z

    .line 377
    invoke-virtual {p0}, Lcom/towbook/mobile/ChatViewActivity;->supportInvalidateOptionsMenu()V

    if-eqz p2, :cond_16

    .line 380
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/towbook/mobile/ChatViewActivity;->messages:Ljava/util/ArrayList;

    .line 381
    iput v0, p0, Lcom/towbook/mobile/ChatViewActivity;->messagePageNumber:I

    const/16 p2, 0x1e

    .line 382
    iput p2, p0, Lcom/towbook/mobile/ChatViewActivity;->messagePageSize:I

    goto :goto_21

    :cond_16
    const/4 p2, 0x2

    .line 384
    iput p2, p0, Lcom/towbook/mobile/ChatViewActivity;->messagePageNumber:I

    .line 385
    iget-object p2, p0, Lcom/towbook/mobile/ChatViewActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lcom/towbook/mobile/ChatViewActivity;->messagePageSize:I

    :goto_21
    const/16 p2, 0x8

    .line 388
    invoke-direct {p0, p2}, Lcom/towbook/mobile/ChatViewActivity;->handleNoMessageText(I)V

    .line 389
    new-instance p2, Lcom/towbook/mobile/ChatViewActivity$7;

    iget v4, p0, Lcom/towbook/mobile/ChatViewActivity;->messagePageSize:I

    iget v5, p0, Lcom/towbook/mobile/ChatViewActivity;->messagePageNumber:I

    move-object v0, p2

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/towbook/mobile/ChatViewActivity$7;-><init>(Lcom/towbook/mobile/ChatViewActivity;Landroid/content/Context;III)V

    .line 412
    invoke-virtual {p2}, Lcom/towbook/mobile/ChatViewActivity$7;->start()Lcom/towbook/mobile/task/ChatGetAllMessagesByIdTask;

    return-void
.end method

.method public static getPopupIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .registers 4

    if-eqz p0, :cond_14

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/towbook/mobile/ChatViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10800000

    .line 85
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "chatId"

    .line 86
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleCallMessageRead()V
    .registers 4

    .line 244
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/ChatViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "message_read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "chatId"

    .line 245
    sget v2, Lcom/towbook/mobile/ChatViewActivity;->chatId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "readingUserId"

    .line 246
    invoke-virtual {p0}, Lcom/towbook/mobile/ChatViewActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/towbook/api/CurrentUser;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/ChatViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private handleNoMessageText(I)V
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->tvNoMessages:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 548
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->tvNoMessages:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private parseSentMessage(Ljava/lang/String;)Lcom/towbook/api/Message;
    .registers 5

    .line 332
    new-instance v0, Lcom/towbook/api/Message;

    invoke-virtual {p0}, Lcom/towbook/mobile/ChatViewActivity;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/towbook/api/CurrentUser;->getId()I

    move-result v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lcom/towbook/api/Message;-><init>(ILjava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method private sortByDateReceived(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/Message;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/Message;",
            ">;"
        }
    .end annotation

    .line 536
    new-instance v0, Lcom/towbook/mobile/ChatViewActivity$9;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/ChatViewActivity$9;-><init>(Lcom/towbook/mobile/ChatViewActivity;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 142
    invoke-super {p0, p1}, Lcom/towbook/mobile/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-wide/16 v0, -0x2710

    .line 144
    iput-wide v0, p0, Lcom/towbook/mobile/ChatViewActivity;->chatNonceId:J

    .line 147
    invoke-virtual {p0}, Lcom/towbook/mobile/ChatViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "chatId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/towbook/mobile/ChatViewActivity;->chatId:I

    .line 148
    invoke-virtual {p0}, Lcom/towbook/mobile/ChatViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/towbook/mobile/ChatViewActivity;->chatName:Ljava/lang/String;

    .line 151
    sget p1, Lcom/towbook/mobile/ChatViewActivity;->chatId:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2d

    .line 152
    invoke-direct {p0}, Lcom/towbook/mobile/ChatViewActivity;->getCurrentChat()V

    .line 153
    sget p1, Lcom/towbook/mobile/ChatViewActivity;->chatId:I

    invoke-direct {p0, p1, v0}, Lcom/towbook/mobile/ChatViewActivity;->getMessagesForChat(IZ)V

    .line 157
    :cond_2d
    invoke-virtual {p0}, Lcom/towbook/mobile/ChatViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    .line 158
    sget-object v1, Lcom/towbook/mobile/ChatViewActivity;->chatName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 160
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 162
    new-instance p1, Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;-><init>(Lcom/towbook/mobile/ChatViewActivity;Lcom/towbook/mobile/ChatViewActivity$1;)V

    iput-object p1, p0, Lcom/towbook/mobile/ChatViewActivity;->receiver:Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    .line 163
    iget-object p1, p0, Lcom/towbook/mobile/ChatViewActivity;->receiver:Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/ChatViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "new_message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/towbook/mobile/ChatViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    iget-object p1, p0, Lcom/towbook/mobile/ChatViewActivity;->receiver:Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/ChatViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "message_read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/towbook/mobile/ChatViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    iget-object p1, p0, Lcom/towbook/mobile/ChatViewActivity;->rivSendMessage:Lcom/melnykov/fab/FloatingActionButton;

    new-instance v0, Lcom/towbook/mobile/ChatViewActivity$1;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/ChatViewActivity$1;-><init>(Lcom/towbook/mobile/ChatViewActivity;)V

    invoke-virtual {p1, v0}, Lcom/melnykov/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-direct {p0}, Lcom/towbook/mobile/ChatViewActivity;->handleCallMessageRead()V

    .line 181
    iget-object p1, p0, Lcom/towbook/mobile/ChatViewActivity;->lvMessages:Landroid/widget/ListView;

    new-instance v0, Lcom/towbook/mobile/ChatViewActivity$2;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/ChatViewActivity$2;-><init>(Lcom/towbook/mobile/ChatViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 207
    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->currentChatActivity:Lcom/towbook/mobile/ChatViewActivity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    .line 348
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->mnRefresh:Ljava/lang/String;

    const v1, 0x7f080198

    const/4 v2, 0x2

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->menuRefresh:Landroid/view/MenuItem;

    .line 349
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->menuRefresh:Landroid/view/MenuItem;

    const v3, 0x7f08017b

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 350
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->menuRefresh:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const-string v0, "Add People"

    const/4 v3, 0x1

    .line 352
    invoke-interface {p1, v2, v1, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->menuAddParticipants:Landroid/view/MenuItem;

    const-string v0, "People & Options"

    .line 353
    invoke-interface {p1, v2, v1, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/towbook/mobile/ChatViewActivity;->menuPeople:Landroid/view/MenuItem;

    .line 355
    iget-boolean p1, p0, Lcom/towbook/mobile/ChatViewActivity;->isRefreshing:Z

    if-eqz p1, :cond_42

    .line 356
    iget-object p1, p0, Lcom/towbook/mobile/ChatViewActivity;->menuRefresh:Landroid/view/MenuItem;

    const v0, 0x7f0b002a

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    :cond_42
    return v3
.end method

.method protected onDestroy()V
    .registers 3

    .line 553
    invoke-super {p0}, Lcom/towbook/mobile/BaseActivity;->onDestroy()V

    .line 555
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->receiver:Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 556
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->receiver:Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    invoke-virtual {p0, v0}, Lcom/towbook/mobile/ChatViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 557
    iput-object v1, p0, Lcom/towbook/mobile/ChatViewActivity;->receiver:Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    .line 560
    :cond_f
    sput-object v1, Lcom/towbook/mobile/TowbookApplication;->currentChatActivity:Lcom/towbook/mobile/ChatViewActivity;

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->menuRefresh:Landroid/view/MenuItem;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_e

    .line 96
    iput v1, p0, Lcom/towbook/mobile/ChatViewActivity;->messagePageNumber:I

    .line 97
    sget p1, Lcom/towbook/mobile/ChatViewActivity;->chatId:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/towbook/mobile/ChatViewActivity;->getMessagesForChat(IZ)V

    goto :goto_4c

    .line 98
    :cond_e
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->menuAddParticipants:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_30

    .line 100
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/towbook/mobile/ChatContactListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "isAddNew"

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "chatId"

    .line 102
    sget v2, Lcom/towbook/mobile/ChatViewActivity;->chatId:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "chatName"

    .line 103
    sget-object v2, Lcom/towbook/mobile/ChatViewActivity;->chatName:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, p1}, Lcom/towbook/mobile/ChatViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4c

    .line 105
    :cond_30
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->menuPeople:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_4c

    .line 106
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/towbook/mobile/ChatSettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "participants"

    .line 107
    iget-object v2, p0, Lcom/towbook/mobile/ChatViewActivity;->participantIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "chatId"

    .line 108
    sget v2, Lcom/towbook/mobile/ChatViewActivity;->chatId:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, p1}, Lcom/towbook/mobile/ChatViewActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4c
    :goto_4c
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 338
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    .line 343
    invoke-super {p0, p1}, Lcom/towbook/mobile/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 340
    :cond_e
    invoke-virtual {p0}, Lcom/towbook/mobile/ChatViewActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .registers 3

    .line 364
    invoke-super {p0}, Lcom/towbook/mobile/BaseActivity;->onPause()V

    const/4 v0, 0x0

    .line 366
    sput-object v0, Lcom/towbook/mobile/TowbookApplication;->currentChatActivity:Lcom/towbook/mobile/ChatViewActivity;

    .line 369
    iget-object v1, p0, Lcom/towbook/mobile/ChatViewActivity;->receiver:Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    if-eqz v1, :cond_11

    .line 370
    iget-object v1, p0, Lcom/towbook/mobile/ChatViewActivity;->receiver:Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    invoke-virtual {p0, v1}, Lcom/towbook/mobile/ChatViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 371
    iput-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->receiver:Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    :cond_11
    return-void
.end method

.method protected onResume()V
    .registers 5

    .line 117
    invoke-super {p0}, Lcom/towbook/mobile/BaseActivity;->onResume()V

    .line 118
    invoke-direct {p0}, Lcom/towbook/mobile/ChatViewActivity;->checkConnectivity()V

    .line 120
    invoke-direct {p0}, Lcom/towbook/mobile/ChatViewActivity;->getLastMessageAndRead()V

    .line 123
    sput-object p0, Lcom/towbook/mobile/TowbookApplication;->currentChatActivity:Lcom/towbook/mobile/ChatViewActivity;

    .line 125
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->receiver:Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    if-nez v0, :cond_5f

    .line 126
    new-instance v0, Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;-><init>(Lcom/towbook/mobile/ChatViewActivity;Lcom/towbook/mobile/ChatViewActivity$1;)V

    iput-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->receiver:Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    .line 127
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->receiver:Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/ChatViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "new_message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/ChatViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/towbook/mobile/ChatViewActivity;->receiver:Lcom/towbook/mobile/ChatViewActivity$PusherActionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/towbook/mobile/ChatViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "message_read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/towbook/mobile/ChatViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_5f
    return-void
.end method
