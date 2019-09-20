.class public Lcom/towbook/common/AzureNotificationHandler;
.super Lcom/microsoft/windowsazure/notifications/NotificationsHandler;
.source "AzureNotificationHandler.java"


# static fields
.field private static final NOTIFICATION_TYPE_CALL_REQUEST:I = 0x64

.field private static final NOTIFICATION_TYPE_CHAT:I = 0x66

.field private static final NOTIFICATION_TYPE_DISPATCH:I = 0x65

.field private static final NOTIFICATION_TYPE_GENERIC:I = 0x67

.field private static final NOTIFICATION_TYPE_SILENT:I = 0x68


# instance fields
.field private final TAG:Ljava/lang/String;

.field builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private callRequest:Lcom/towbook/api/CallRequest;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/microsoft/windowsazure/notifications/NotificationsHandler;-><init>()V

    .line 49
    const-class v0, Lcom/towbook/common/AzureNotificationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/common/AzureNotificationHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/towbook/common/AzureNotificationHandler;)Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/towbook/common/AzureNotificationHandler;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private getNotificationType(Landroid/os/Bundle;)I
    .registers 3

    const-string v0, "callRequestId"

    .line 194
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 p1, 0x64

    return p1

    :cond_b
    const-string v0, "chatId"

    .line 196
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 p1, 0x66

    return p1

    :cond_16
    const-string v0, "referenceId"

    .line 198
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string v0, "referenceType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    const/16 p1, 0x67

    return p1

    :cond_39
    const-string v0, "type"

    .line 200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_52

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "silent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    const/16 p1, 0x68

    return p1

    :cond_52
    const/16 p1, 0x65

    return p1
.end method

.method private handleCallChatLogic(Landroid/os/Bundle;)V
    .registers 11

    .line 253
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy hh:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 265
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 266
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "id"

    .line 267
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 268
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_16

    :cond_37
    const-string v8, "chatId"

    .line 269
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 270
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_16

    :cond_48
    const-string v8, "priority"

    .line 271
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 272
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto :goto_16

    :cond_58
    const-string v8, "messageId"

    .line 273
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 275
    :try_start_60
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_67
    .catch Ljava/text/ParseException; {:try_start_60 .. :try_end_67} :catch_68

    goto :goto_16

    :catch_68
    move-exception v6

    .line 277
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_16

    :cond_6d
    const-string v8, "from"

    .line 279
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_79

    .line 280
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto :goto_16

    :cond_79
    const-string v8, "senderUserId"

    .line 281
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 282
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_16

    :cond_8a
    const-string v8, "message"

    .line 283
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 284
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_16

    .line 289
    :cond_98
    iget-object p1, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser(Landroid/content/Context;)Lcom/towbook/api/CurrentUser;

    move-result-object p1

    if-eqz p1, :cond_ad

    iget-object p1, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser(Landroid/content/Context;)Lcom/towbook/api/CurrentUser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/towbook/api/CurrentUser;->getId()I

    move-result p1

    if-ne v2, p1, :cond_ad

    return-void

    :cond_ad
    if-eqz v3, :cond_c0

    if-eqz v4, :cond_c0

    .line 293
    sget-object p1, Lcom/towbook/mobile/TowbookApplication;->currentChatActivity:Lcom/towbook/mobile/ChatViewActivity;

    if-eqz p1, :cond_bb

    sget-object p1, Lcom/towbook/mobile/TowbookApplication;->currentChatActivity:Lcom/towbook/mobile/ChatViewActivity;

    sget p1, Lcom/towbook/mobile/ChatViewActivity;->chatId:I

    if-eq p1, v5, :cond_c0

    :cond_bb
    const-string p1, "New Message Received"

    .line 294
    invoke-direct {p0, p1, v4, v5, v3}, Lcom/towbook/common/AzureNotificationHandler;->sendNotificationChatMessage(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_c0
    return-void
.end method

.method private handleCallRequestLogic(Landroid/os/Bundle;)V
    .registers 9

    const-string v0, "Call Request Received"

    .line 214
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 215
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "callRequestId"

    .line 216
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 217
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_d

    :cond_2e
    const-string v6, "title"

    .line 218
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 219
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_3b
    const-string v6, "messageId"

    .line 220
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 221
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto :goto_d

    :cond_4b
    const-string v6, "accountId"

    .line 222
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 223
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto :goto_d

    .line 228
    :cond_5b
    new-instance p1, Lcom/towbook/mobile/adapter/DBAdapter;

    iget-object v1, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/towbook/mobile/adapter/DBAdapter;-><init>(Landroid/content/Context;)V

    if-lez v0, :cond_9e

    .line 231
    sget-boolean p1, Lcom/towbook/mobile/TowbookApplication;->isAcceptRejectEnabled:Z

    if-eqz p1, :cond_9e

    .line 232
    iget-object p1, p0, Lcom/towbook/common/AzureNotificationHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsed callRequestId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Job Request"

    .line 236
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_94

    const/16 p1, 0x11

    .line 237
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    const/16 p1, 0xb

    .line 238
    invoke-virtual {v3, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 245
    :cond_94
    new-instance p1, Lcom/towbook/mobile/classes/DigitalDispatchRequestHandler;

    iget-object v1, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/towbook/mobile/classes/DigitalDispatchRequestHandler;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-virtual {p1, v0}, Lcom/towbook/mobile/classes/DigitalDispatchRequestHandler;->handle(I)V

    :cond_9e
    return-void
.end method

.method private handleDispatchedCallLogic(Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "Call Request Received"

    .line 173
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "title"

    .line 175
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 176
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_28
    const-string v5, "messageId"

    .line 177
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 178
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_b

    :cond_39
    const-string v5, "accountId"

    .line 179
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 180
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_b

    .line 184
    :cond_4a
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 188
    new-instance v1, Lcom/towbook/common/AzureNotificationHandler$$Lambda$0;

    invoke-direct {v1, p0, v2, v0}, Lcom/towbook/common/AzureNotificationHandler$$Lambda$0;-><init>(Lcom/towbook/common/AzureNotificationHandler;ILjava/lang/String;)V

    const-wide/16 v3, 0x2bc

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    iget-object p1, p0, Lcom/towbook/common/AzureNotificationHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsed messageId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleGenericNotification(Landroid/os/Bundle;)V
    .registers 10

    .line 87
    invoke-static {p1}, Lcom/towbook/common/TBNotification;->load(Landroid/os/Bundle;)Lcom/towbook/common/TBNotification;

    move-result-object p1

    .line 88
    new-instance v0, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 89
    invoke-virtual {p1}, Lcom/towbook/common/TBNotification;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 90
    invoke-virtual {p1}, Lcom/towbook/common/TBNotification;->getMessageId()I

    move-result v1

    .line 92
    invoke-virtual {p1}, Lcom/towbook/common/TBNotification;->getText()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v3, :cond_25

    aget-object v6, v2, v5

    .line 93
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 96
    :cond_25
    invoke-virtual {p1}, Lcom/towbook/common/TBNotification;->getPerformer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual {p1}, Lcom/towbook/common/TBNotification;->getPerformer()Ljava/lang/String;

    move-result-object v2

    goto :goto_34

    :cond_30
    invoke-virtual {p1}, Lcom/towbook/common/TBNotification;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 97
    :goto_34
    invoke-virtual {p1}, Lcom/towbook/common/TBNotification;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 99
    new-instance v5, Lcom/towbook/common/NotificationFactory$NotificationOptions;

    invoke-direct {v5}, Lcom/towbook/common/NotificationFactory$NotificationOptions;-><init>()V

    const/4 v6, 0x1

    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v5, Lcom/towbook/common/NotificationFactory$NotificationOptions;->visibility:Ljava/lang/Integer;

    .line 101
    iput-object v0, v5, Lcom/towbook/common/NotificationFactory$NotificationOptions;->inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v0, v7, :cond_52

    .line 104
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/towbook/common/NotificationFactory$NotificationOptions;->priority:Ljava/lang/Integer;

    .line 107
    :cond_52
    new-instance v0, Lcom/towbook/common/NotificationFactory;

    iget-object v6, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/towbook/common/NotificationFactory;-><init>(Landroid/content/Context;)V

    const-string v6, "com.towbook.mobile.service"

    .line 108
    invoke-virtual {v0, v6, v2, v3, v5}, Lcom/towbook/common/NotificationFactory;->createNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/towbook/common/NotificationFactory$NotificationOptions;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 110
    iget-object v2, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v2

    const/4 v3, 0x0

    .line 113
    invoke-virtual {p1}, Lcom/towbook/common/TBNotification;->getReferenceType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6e

    goto :goto_85

    .line 115
    :cond_6e
    const-class v3, Lcom/towbook/mobile/CallViewActivity;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 116
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    const-class v6, Lcom/towbook/mobile/CallViewActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "callId"

    .line 117
    invoke-virtual {p1}, Lcom/towbook/common/TBNotification;->getReferenceId()I

    move-result p1

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_85
    if-eqz v3, :cond_9d

    const-string p1, "notification_id"

    .line 128
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x34000000

    .line 129
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    invoke-virtual {v2, v3}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 133
    iget-object p1, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    invoke-static {p1, v1, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 137
    :cond_9d
    iget-object p1, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 138
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private handleSilentNotification()V
    .registers 11

    .line 142
    sget-object v0, Lcom/towbook/mobile/service/LocationService;->mLastLocation:Landroid/location/Location;

    if-nez v0, :cond_5

    return-void

    .line 145
    :cond_5
    sget-object v0, Lcom/towbook/mobile/service/LocationService;->mLastLocation:Landroid/location/Location;

    .line 146
    new-instance v9, Lcom/towbook/api/LocationUpdate;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/towbook/api/LocationUpdate;-><init>(Ljava/lang/Long;DDFLjava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/towbook/api/retrofit/TowbookClient;->getInstance(Landroid/content/Context;)Lcom/towbook/api/retrofit/TowbookClient;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v9}, Lcom/towbook/api/retrofit/TowbookClient;->updateLocationRaw(Lcom/towbook/api/LocationUpdate;)Lretrofit2/Call;

    move-result-object v1

    .line 151
    new-instance v2, Lcom/towbook/common/AzureNotificationHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/towbook/common/AzureNotificationHandler$1;-><init>(Lcom/towbook/common/AzureNotificationHandler;Landroid/location/Location;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private sendNotification(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 300
    new-instance v7, Lcom/towbook/common/AzureNotificationHandler$2;

    iget-object v2, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    move-object v0, v7

    move-object v1, p0

    move v3, p1

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/towbook/common/AzureNotificationHandler$2;-><init>(Lcom/towbook/common/AzureNotificationHandler;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    .line 361
    invoke-virtual {v7}, Lcom/towbook/common/AzureNotificationHandler$2;->start()Lcom/towbook/mobile/task/NotificationGetTask;

    return-void
.end method

.method private sendNotificationChatMessage(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    .line 367
    iget-object v0, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 369
    iget-object v1, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/towbook/mobile/ChatViewActivity;->getPopupIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "chatId"

    .line 371
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    iget-object p3, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {p3, p4, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 375
    new-instance v1, Lcom/towbook/common/NotificationFactory;

    iget-object v2, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/towbook/common/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-virtual {v1, p1, p2}, Lcom/towbook/common/NotificationFactory;->createNotification(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 379
    invoke-virtual {p1, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 382
    :try_start_2a
    sget-object p2, Lcom/towbook/mobile/TowbookApplication;->v:Landroid/os/Vibrator;

    sget-object p3, Lcom/towbook/mobile/TowbookApplication;->pattern:[J

    const/4 v1, -0x1

    invoke-virtual {p2, p3, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 383
    sget-object p2, Lcom/towbook/mobile/TowbookApplication;->r:Landroid/media/Ringtone;

    invoke-virtual {p2}, Landroid/media/Ringtone;->play()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p2

    .line 385
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 388
    :goto_3c
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 389
    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Landroid/app/Notification;->flags:I

    .line 390
    invoke-virtual {v0, p4, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 392
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    const-wide/32 p2, 0x3a980

    .line 394
    new-instance v1, Lcom/towbook/common/AzureNotificationHandler$3;

    invoke-direct {v1, p0, v0, p4}, Lcom/towbook/common/AzureNotificationHandler$3;-><init>(Lcom/towbook/common/AzureNotificationHandler;Landroid/app/NotificationManager;I)V

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method final synthetic lambda$handleDispatchedCallLogic$0$AzureNotificationHandler(ILjava/lang/String;)V
    .registers 4

    const-string v0, ""

    .line 188
    invoke-direct {p0, p1, p2, v0}, Lcom/towbook/common/AzureNotificationHandler;->sendNotification(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    .line 64
    iput-object p1, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    .line 66
    iget-object p1, p0, Lcom/towbook/common/AzureNotificationHandler;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/towbook/utils/AppUtils;->getMyAccount(Landroid/content/Context;)Lcom/towbook/api/MyAccount;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 67
    invoke-direct {p0, p2}, Lcom/towbook/common/AzureNotificationHandler;->getNotificationType(Landroid/os/Bundle;)I

    move-result p1

    packed-switch p1, :pswitch_data_26

    .line 81
    :pswitch_11
    invoke-direct {p0, p2}, Lcom/towbook/common/AzureNotificationHandler;->handleDispatchedCallLogic(Landroid/os/Bundle;)V

    goto :goto_24

    .line 78
    :pswitch_15
    invoke-direct {p0}, Lcom/towbook/common/AzureNotificationHandler;->handleSilentNotification()V

    goto :goto_24

    .line 75
    :pswitch_19
    invoke-direct {p0, p2}, Lcom/towbook/common/AzureNotificationHandler;->handleGenericNotification(Landroid/os/Bundle;)V

    goto :goto_24

    .line 72
    :pswitch_1d
    invoke-direct {p0, p2}, Lcom/towbook/common/AzureNotificationHandler;->handleCallChatLogic(Landroid/os/Bundle;)V

    goto :goto_24

    .line 69
    :pswitch_21
    invoke-direct {p0, p2}, Lcom/towbook/common/AzureNotificationHandler;->handleCallRequestLogic(Landroid/os/Bundle;)V

    :cond_24
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x64
        :pswitch_21
        :pswitch_11
        :pswitch_1d
        :pswitch_19
        :pswitch_15
    .end packed-switch
.end method
