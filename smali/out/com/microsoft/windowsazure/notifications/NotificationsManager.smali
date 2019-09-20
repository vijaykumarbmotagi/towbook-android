.class public Lcom/microsoft/windowsazure/notifications/NotificationsManager;
.super Ljava/lang/Object;
.source "NotificationsManager.java"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final GOOGLE_CLOUD_MESSAGING_REGISTRATION_ID:Ljava/lang/String; = "WAMS_GoogleCloudMessagingRegistrationId"

.field private static final NOTIFICATIONS_HANDLER_CLASS:Ljava/lang/String; = "WAMS_NotificationsHandlerClass"

.field private static mHandler:Lcom/microsoft/windowsazure/notifications/NotificationsHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/Class;Landroid/content/Context;)V
    .registers 2

    .line 133
    invoke-static {p0, p1}, Lcom/microsoft/windowsazure/notifications/NotificationsManager;->setHandler(Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;Landroid/content/Context;)V
    .registers 2

    .line 146
    invoke-static {p0, p1}, Lcom/microsoft/windowsazure/notifications/NotificationsManager;->setRegistrationId(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 120
    invoke-static {p0}, Lcom/microsoft/windowsazure/notifications/NotificationsManager;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getHandler(Landroid/content/Context;)Lcom/microsoft/windowsazure/notifications/NotificationsHandler;
    .registers 3

    .line 99
    sget-object v0, Lcom/microsoft/windowsazure/notifications/NotificationsManager;->mHandler:Lcom/microsoft/windowsazure/notifications/NotificationsHandler;

    if-nez v0, :cond_23

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "WAMS_NotificationsHandlerClass"

    const/4 v1, 0x0

    .line 102
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 105
    :try_start_15
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/windowsazure/notifications/NotificationsHandler;

    sput-object p0, Lcom/microsoft/windowsazure/notifications/NotificationsManager;->mHandler:Lcom/microsoft/windowsazure/notifications/NotificationsHandler;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    return-object v1

    .line 113
    :cond_23
    :goto_23
    sget-object p0, Lcom/microsoft/windowsazure/notifications/NotificationsManager;->mHandler:Lcom/microsoft/windowsazure/notifications/NotificationsHandler;

    return-object p0
.end method

.method private static getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "WAMS_GoogleCloudMessagingRegistrationId"

    const/4 v1, 0x0

    .line 123
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static handleNotifications(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/microsoft/windowsazure/notifications/NotificationsHandler;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/microsoft/windowsazure/notifications/NotificationsManager$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/microsoft/windowsazure/notifications/NotificationsManager$1;-><init>(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 60
    instance-of p1, v0, Landroid/os/AsyncTask;

    if-nez p1, :cond_10

    invoke-virtual {v0, p0}, Lcom/microsoft/windowsazure/notifications/NotificationsManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_15

    :cond_10
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_15
    return-void
.end method

.method private static setHandler(Ljava/lang/Class;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/microsoft/windowsazure/notifications/NotificationsHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 136
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "WAMS_NotificationsHandlerClass"

    .line 137
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static setRegistrationId(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 149
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "WAMS_GoogleCloudMessagingRegistrationId"

    .line 150
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static stopHandlingNotifications(Landroid/content/Context;)V
    .registers 3

    .line 69
    new-instance v0, Lcom/microsoft/windowsazure/notifications/NotificationsManager$2;

    invoke-direct {v0, p0}, Lcom/microsoft/windowsazure/notifications/NotificationsManager$2;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 91
    instance-of v1, v0, Landroid/os/AsyncTask;

    if-nez v1, :cond_10

    invoke-virtual {v0, p0}, Lcom/microsoft/windowsazure/notifications/NotificationsManager$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_15

    :cond_10
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_15
    return-void
.end method
