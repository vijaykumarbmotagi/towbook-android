.class public final Lorg/junit/internal/Throwables;
.super Ljava/lang/Object;
.source "Throwables.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static rethrow(Ljava/lang/Throwable;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    throw p0
.end method

.method public static rethrowAsException(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-static {p0}, Lorg/junit/internal/Throwables;->rethrow(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method