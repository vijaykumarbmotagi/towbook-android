.class public abstract Lcom/google/android/libraries/places/internal/hj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/libraries/places/internal/hj<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/libraries/places/internal/hk<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/jo;"
    }
.end annotation


# instance fields
.field public q:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/libraries/places/internal/hj;->q:I

    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Serializing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to a "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final a(Lcom/google/android/libraries/places/internal/kd;)I
    .registers 4

    .line 17
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hj;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 19
    invoke-interface {p1, p0}, Lcom/google/android/libraries/places/internal/kd;->b(Ljava/lang/Object;)I

    move-result v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/hj;->a(I)V

    :cond_e
    return v0
.end method

.method a(I)V
    .registers 2

    .line 16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final b()Lcom/google/android/libraries/places/internal/hq;
    .registers 4

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hj;->h()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/hq;->c(I)Lcom/google/android/libraries/places/internal/ji;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ji;->b()Lcom/google/android/libraries/places/internal/hy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/hj;->a(Lcom/google/android/libraries/places/internal/hy;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ji;->a()Lcom/google/android/libraries/places/internal/hq;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()[B
    .registers 4

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hj;->h()I

    move-result v0

    new-array v0, v0, [B

    .line 9
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/hy;->a([B)Lcom/google/android/libraries/places/internal/hy;

    move-result-object v1

    .line 10
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/hj;->a(Lcom/google/android/libraries/places/internal/hy;)V

    .line 11
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/hy;->i()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method d()I
    .registers 2

    .line 15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
