.class public abstract Lcom/towbook/mobile/authenticator/AuthenticatedTask;
.super Lroboguice/util/RoboAsyncTask;
.source "AuthenticatedTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lroboguice/util/RoboAsyncTask<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthenticatedTask<T>"

.field protected static cancelIfFinishing:Ljava/lang/Boolean;


# instance fields
.field private accountScope:Lcom/towbook/mobile/authenticator/TowbookAccountScope;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field private contextScope:Lroboguice/inject/ContextScope;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->cancelIfFinishing:Ljava/lang/Boolean;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lroboguice/util/RoboAsyncTask;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->context:Landroid/content/Context;

    return-void
.end method

.method private makeAuthenticatedApiCall()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 55
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 57
    :goto_d
    iget-object v2, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    if-nez v0, :cond_1c

    .line 60
    :try_start_15
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/towbook/mobile/authenticator/AccountUtils;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    goto :goto_22

    :cond_1c
    sget-object v3, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->cancelIfFinishing:Ljava/lang/Boolean;

    invoke-static {v2, v0, v3}, Lcom/towbook/mobile/authenticator/AccountUtils;->getAccount(Landroid/accounts/AccountManager;Landroid/app/Activity;Ljava/lang/Boolean;)Landroid/accounts/Account;

    move-result-object v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_22} :catch_bb
    .catch Landroid/accounts/AccountsException; {:try_start_15 .. :try_end_22} :catch_ba

    .line 68
    :goto_22
    iget-object v3, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->accountScope:Lcom/towbook/mobile/authenticator/TowbookAccountScope;

    iget-object v4, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->context:Landroid/content/Context;

    invoke-virtual {v3, v0, v2, v4}, Lcom/towbook/mobile/authenticator/TowbookAccountScope;->enterWith(Landroid/accounts/Account;Landroid/accounts/AccountManager;Landroid/content/Context;)V

    .line 70
    :try_start_29
    iget-object v2, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->contextScope:Lroboguice/inject/ContextScope;

    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_b3

    .line 72
    :try_start_32
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->run(Landroid/accounts/Account;)Ljava/lang/Object;

    move-result-object v2
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_56
    .catch Landroid/accounts/OperationCanceledException; {:try_start_32 .. :try_end_36} :catch_47
    .catchall {:try_start_32 .. :try_end_36} :catchall_45

    .line 91
    :try_start_36
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->contextScope:Lroboguice/inject/ContextScope;

    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_b3

    .line 94
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->accountScope:Lcom/towbook/mobile/authenticator/TowbookAccountScope;

    invoke-virtual {v0}, Lcom/towbook/mobile/authenticator/TowbookAccountScope;->exit()V

    return-object v2

    :catchall_45
    move-exception v0

    goto :goto_a9

    .line 91
    :catch_47
    :try_start_47
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->contextScope:Lroboguice/inject/ContextScope;

    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_b3

    .line 94
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->accountScope:Lcom/towbook/mobile/authenticator/TowbookAccountScope;

    invoke-virtual {v0}, Lcom/towbook/mobile/authenticator/TowbookAccountScope;->exit()V

    return-object v1

    :catch_56
    move-exception v2

    .line 74
    :try_start_57
    invoke-static {v2}, Lcom/towbook/mobile/authenticator/AccountUtils;->isBadRequest(Ljava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_a8

    const-string v2, "AuthenticatedTask<T>"

    const-string v3, "unauthorized occurred... attempt to renew token"

    .line 75
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_99

    .line 79
    iget-object v2, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/towbook/mobile/authenticator/AccountUtils;->refreshToken(Landroid/accounts/Account;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_86

    iget-object v2, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/towbook/mobile/authenticator/AccountUtils;->updateAccount(Landroid/accounts/Account;Landroid/content/Context;)Z

    move-result v2
    :try_end_74
    .catchall {:try_start_57 .. :try_end_74} :catchall_45

    if-eqz v2, :cond_77

    goto :goto_86

    .line 91
    :cond_77
    :try_start_77
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->contextScope:Lroboguice/inject/ContextScope;

    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_b3

    .line 94
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->accountScope:Lcom/towbook/mobile/authenticator/TowbookAccountScope;

    invoke-virtual {v0}, Lcom/towbook/mobile/authenticator/TowbookAccountScope;->exit()V

    return-object v1

    .line 80
    :cond_86
    :goto_86
    :try_start_86
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->run(Landroid/accounts/Account;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_45

    .line 91
    :try_start_8a
    iget-object v1, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->contextScope:Lroboguice/inject/ContextScope;

    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_b3

    .line 94
    iget-object v1, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->accountScope:Lcom/towbook/mobile/authenticator/TowbookAccountScope;

    invoke-virtual {v1}, Lcom/towbook/mobile/authenticator/TowbookAccountScope;->exit()V

    return-object v0

    .line 91
    :cond_99
    :try_start_99
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->contextScope:Lroboguice/inject/ContextScope;

    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V
    :try_end_a2
    .catchall {:try_start_99 .. :try_end_a2} :catchall_b3

    .line 94
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->accountScope:Lcom/towbook/mobile/authenticator/TowbookAccountScope;

    invoke-virtual {v0}, Lcom/towbook/mobile/authenticator/TowbookAccountScope;->exit()V

    return-object v1

    .line 86
    :cond_a8
    :try_start_a8
    throw v2
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_45

    .line 91
    :goto_a9
    :try_start_a9
    iget-object v1, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->contextScope:Lroboguice/inject/ContextScope;

    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v0
    :try_end_b3
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_b3

    :catchall_b3
    move-exception v0

    .line 94
    iget-object v1, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->accountScope:Lcom/towbook/mobile/authenticator/TowbookAccountScope;

    invoke-virtual {v1}, Lcom/towbook/mobile/authenticator/TowbookAccountScope;->exit()V

    throw v0

    :catch_ba
    return-object v1

    :catch_bb
    return-object v1
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->makeAuthenticatedApiCall()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onException(Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 100
    invoke-super {p0, p1}, Lroboguice/util/RoboAsyncTask;->onException(Ljava/lang/Exception;)V

    .line 103
    instance-of v0, p1, Lcom/towbook/utils/HttpRequest$HttpRequestException;

    if-nez v0, :cond_5a

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_5a

    instance-of v0, p1, Ljava/net/ConnectException;

    if-nez v0, :cond_5a

    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_5a

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_18

    goto :goto_5a

    .line 110
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {v1}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/towbook/api/CurrentUser;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserIdentifier(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {v0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserName(Ljava/lang/String;)V

    .line 114
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 115
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/acra/ErrorReporter;->handleSilentException(Ljava/lang/Throwable;)V

    return-void

    :cond_5a
    :goto_5a
    return-void
.end method

.method protected abstract run(Landroid/accounts/Account;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
