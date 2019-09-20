.class public Lroboguice/util/Ln$BaseConfig;
.super Ljava/lang/Object;
.source "Ln.java"

# interfaces
.implements Lroboguice/util/Ln$Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lroboguice/util/Ln;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseConfig"
.end annotation


# instance fields
.field protected minimumLogLevel:I

.field protected packageName:Ljava/lang/String;

.field protected scope:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 203
    iput v0, p0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const-string v0, ""

    .line 204
    iput-object v0, p0, Lroboguice/util/Ln$BaseConfig;->packageName:Ljava/lang/String;

    const-string v0, ""

    .line 205
    iput-object v0, p0, Lroboguice/util/Ln$BaseConfig;->scope:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .registers 5
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 203
    iput v0, p0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const-string v1, ""

    .line 204
    iput-object v1, p0, Lroboguice/util/Ln$BaseConfig;->packageName:Ljava/lang/String;

    const-string v1, ""

    .line 205
    iput-object v1, p0, Lroboguice/util/Ln$BaseConfig;->scope:Ljava/lang/String;

    .line 213
    :try_start_e
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lroboguice/util/Ln$BaseConfig;->packageName:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, Lroboguice/util/Ln$BaseConfig;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x4

    .line 215
    :goto_26
    iput v0, p0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    .line 216
    iget-object p1, p0, Lroboguice/util/Ln$BaseConfig;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lroboguice/util/Ln$BaseConfig;->scope:Ljava/lang/String;

    const-string p1, "Configuring Logging, minimum log level is %s"

    const/4 v0, 0x1

    .line 218
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    invoke-static {v1}, Lroboguice/util/Ln;->logLevelToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lroboguice/util/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_40} :catch_41

    goto :goto_49

    :catch_41
    move-exception p1

    .line 221
    iget-object v0, p0, Lroboguice/util/Ln$BaseConfig;->packageName:Ljava/lang/String;

    const-string v1, "Error configuring logger"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_49
    return-void
.end method


# virtual methods
.method public getLoggingLevel()I
    .registers 2

    .line 226
    iget v0, p0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    return v0
.end method

.method public setLoggingLevel(I)V
    .registers 2

    .line 230
    iput p1, p0, Lroboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    return-void
.end method
