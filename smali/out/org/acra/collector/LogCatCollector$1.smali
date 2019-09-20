.class final Lorg/acra/collector/LogCatCollector$1;
.super Ljava/lang/Object;
.source "LogCatCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/collector/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$process:Ljava/lang/Process;


# direct methods
.method constructor <init>(Ljava/lang/Process;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lorg/acra/collector/LogCatCollector$1;->val$process:Ljava/lang/Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/acra/collector/LogCatCollector$1;->val$process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x2000

    .line 112
    new-array v1, v1, [B

    .line 113
    :goto_a
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_11

    if-ltz v2, :cond_11

    goto :goto_a

    :catch_11
    :cond_11
    return-void
.end method
