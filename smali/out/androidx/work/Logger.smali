.class public abstract Landroidx/work/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Logger$LogcatLogger;
    }
.end annotation


# static fields
.field private static final MAX_PREFIXED_TAG_LENGTH:I

.field private static final MAX_TAG_LENGTH:I = 0x17

.field private static final TAG_PREFIX:Ljava/lang/String; = "WM-"

.field private static sLogger:Landroidx/work/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WM-"

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x17

    sput v0, Landroidx/work/Logger;->MAX_PREFIXED_TAG_LENGTH:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Landroidx/work/Logger;
    .registers 3

    const-class v0, Landroidx/work/Logger;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-object v1, Landroidx/work/Logger;->sLogger:Landroidx/work/Logger;

    if-nez v1, :cond_f

    .line 75
    new-instance v1, Landroidx/work/Logger$LogcatLogger;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroidx/work/Logger$LogcatLogger;-><init>(I)V

    sput-object v1, Landroidx/work/Logger;->sLogger:Landroidx/work/Logger;

    .line 77
    :cond_f
    sget-object v1, Landroidx/work/Logger;->sLogger:Landroidx/work/Logger;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    .line 73
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setLogger(Landroidx/work/Logger;)V
    .registers 2

    const-class v0, Landroidx/work/Logger;

    monitor-enter v0

    .line 44
    :try_start_3
    sput-object p0, Landroidx/work/Logger;->sLogger:Landroidx/work/Logger;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 45
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    .line 43
    monitor-exit v0

    throw p0
.end method

.method public static tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "WM-"

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    sget v2, Landroidx/work/Logger;->MAX_PREFIXED_TAG_LENGTH:I

    if-lt v0, v2, :cond_1f

    const/4 v0, 0x0

    .line 57
    sget v2, Landroidx/work/Logger;->MAX_PREFIXED_TAG_LENGTH:I

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 59
    :cond_1f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :goto_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs abstract debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method
