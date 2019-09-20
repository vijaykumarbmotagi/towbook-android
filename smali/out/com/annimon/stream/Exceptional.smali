.class public Lcom/annimon/stream/Exceptional;
.super Ljava/lang/Object;
.source "Exceptional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final throwable:Ljava/lang/Throwable;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public static of(Lcom/annimon/stream/function/ThrowableSupplier;)Lcom/annimon/stream/Exceptional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowableSupplier<",
            "TT;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 43
    :try_start_0
    new-instance v0, Lcom/annimon/stream/Exceptional;

    invoke-interface {p0}, Lcom/annimon/stream/function/ThrowableSupplier;->get()Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/annimon/stream/Exceptional;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception p0

    .line 45
    invoke-static {p0}, Lcom/annimon/stream/Exceptional;->of(Ljava/lang/Throwable;)Lcom/annimon/stream/Exceptional;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Throwable;)Lcom/annimon/stream/Exceptional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/annimon/stream/Exceptional;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/annimon/stream/Exceptional;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public custom(Lcom/annimon/stream/function/Function;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    .line 193
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-interface {p1, p0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 305
    :cond_4
    instance-of v1, p1, Lcom/annimon/stream/Exceptional;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 309
    :cond_a
    check-cast p1, Lcom/annimon/stream/Exceptional;

    .line 310
    iget-object v1, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    iget-object v3, p1, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/annimon/stream/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    iget-object p1, p1, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    .line 311
    invoke-static {v1, p1}, Lcom/annimon/stream/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getOptional()Lcom/annimon/stream/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    invoke-static {v0}, Lcom/annimon/stream/Optional;->ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getOrElse(Lcom/annimon/stream/function/Supplier;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_7

    iget-object p1, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    :goto_b
    return-object p1
.end method

.method public getOrElse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    iget-object p1, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    :cond_6
    return-object p1
.end method

.method public getOrThrow()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    .line 133
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    throw v0

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrThrow(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TT;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_a

    .line 161
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 162
    throw p1

    .line 164
    :cond_a
    iget-object p1, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public getOrThrowRuntimeException()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_c

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 148
    :cond_c
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    .line 316
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/annimon/stream/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ifException(Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/Exceptional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_9

    .line 239
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    return-object p0
.end method

.method public ifExceptionIs(Ljava/lang/Class;Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/Exceptional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/annimon/stream/function/Consumer<",
            "-TE;>;)",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    .line 255
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 256
    iget-object p1, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    invoke-interface {p2, p1}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_15
    return-object p0
.end method

.method public ifPresent(Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/Exceptional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;)",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_9

    .line 226
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    return-object p0
.end method

.method public isPresent()Z
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public map(Lcom/annimon/stream/function/ThrowableFunction;)Lcom/annimon/stream/Exceptional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/ThrowableFunction<",
            "-TT;+TU;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/Exceptional<",
            "TU;>;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_b

    .line 207
    iget-object p1, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/annimon/stream/Exceptional;->of(Ljava/lang/Throwable;)Lcom/annimon/stream/Exceptional;

    move-result-object p1

    return-object p1

    .line 209
    :cond_b
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :try_start_e
    new-instance v0, Lcom/annimon/stream/Exceptional;

    iget-object v1, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    invoke-interface {p1, v1}, Lcom/annimon/stream/function/ThrowableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/annimon/stream/Exceptional;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception p1

    .line 213
    invoke-static {p1}, Lcom/annimon/stream/Exceptional;->of(Ljava/lang/Throwable;)Lcom/annimon/stream/Exceptional;

    move-result-object p1

    return-object p1
.end method

.method public or(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Exceptional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;>;)",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_5

    return-object p0

    .line 179
    :cond_5
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/annimon/stream/Exceptional;

    return-object p1
.end method

.method public recover(Lcom/annimon/stream/function/ThrowableFunction;)Lcom/annimon/stream/Exceptional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableFunction<",
            "Ljava/lang/Throwable;",
            "+TT;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_5

    return-object p0

    .line 274
    :cond_5
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :try_start_8
    new-instance v0, Lcom/annimon/stream/Exceptional;

    iget-object v1, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    invoke-interface {p1, v1}, Lcom/annimon/stream/function/ThrowableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/annimon/stream/Exceptional;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception p1

    .line 278
    invoke-static {p1}, Lcom/annimon/stream/Exceptional;->of(Ljava/lang/Throwable;)Lcom/annimon/stream/Exceptional;

    move-result-object p1

    return-object p1
.end method

.method public recoverWith(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Exceptional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;>;)",
            "Lcom/annimon/stream/Exceptional<",
            "TT;>;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_5

    return-object p0

    .line 295
    :cond_5
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/annimon/stream/Exceptional;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 321
    iget-object v0, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_13

    const-string v0, "Exceptional value %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/annimon/stream/Exceptional;->value:Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 322
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_13
    const-string v0, "Exceptional throwable %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/annimon/stream/Exceptional;->throwable:Ljava/lang/Throwable;

    aput-object v3, v2, v1

    .line 323
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0
.end method
