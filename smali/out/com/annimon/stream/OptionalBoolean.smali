.class public final Lcom/annimon/stream/OptionalBoolean;
.super Ljava/lang/Object;
.source "OptionalBoolean.java"


# static fields
.field private static final EMPTY:Lcom/annimon/stream/OptionalBoolean;

.field private static final FALSE:Lcom/annimon/stream/OptionalBoolean;

.field private static final TRUE:Lcom/annimon/stream/OptionalBoolean;


# instance fields
.field private final isPresent:Z

.field private final value:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/annimon/stream/OptionalBoolean;

    invoke-direct {v0}, Lcom/annimon/stream/OptionalBoolean;-><init>()V

    sput-object v0, Lcom/annimon/stream/OptionalBoolean;->EMPTY:Lcom/annimon/stream/OptionalBoolean;

    .line 21
    new-instance v0, Lcom/annimon/stream/OptionalBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/annimon/stream/OptionalBoolean;-><init>(Z)V

    sput-object v0, Lcom/annimon/stream/OptionalBoolean;->TRUE:Lcom/annimon/stream/OptionalBoolean;

    .line 22
    new-instance v0, Lcom/annimon/stream/OptionalBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/annimon/stream/OptionalBoolean;-><init>(Z)V

    sput-object v0, Lcom/annimon/stream/OptionalBoolean;->FALSE:Lcom/annimon/stream/OptionalBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 59
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    .line 64
    iput-boolean p1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    return-void
.end method

.method public static empty()Lcom/annimon/stream/OptionalBoolean;
    .registers 1

    .line 30
    sget-object v0, Lcom/annimon/stream/OptionalBoolean;->EMPTY:Lcom/annimon/stream/OptionalBoolean;

    return-object v0
.end method

.method public static of(Z)Lcom/annimon/stream/OptionalBoolean;
    .registers 1

    if-eqz p0, :cond_5

    .line 40
    sget-object p0, Lcom/annimon/stream/OptionalBoolean;->TRUE:Lcom/annimon/stream/OptionalBoolean;

    goto :goto_7

    :cond_5
    sget-object p0, Lcom/annimon/stream/OptionalBoolean;->FALSE:Lcom/annimon/stream/OptionalBoolean;

    :goto_7
    return-object p0
.end method

.method public static ofNullable(Ljava/lang/Boolean;)Lcom/annimon/stream/OptionalBoolean;
    .registers 1

    if-nez p0, :cond_5

    .line 51
    sget-object p0, Lcom/annimon/stream/OptionalBoolean;->EMPTY:Lcom/annimon/stream/OptionalBoolean;

    goto :goto_d

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/annimon/stream/OptionalBoolean;->of(Z)Lcom/annimon/stream/OptionalBoolean;

    move-result-object p0

    :goto_d
    return-object p0
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
            "Lcom/annimon/stream/OptionalBoolean;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 165
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-interface {p1, p0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 298
    :cond_4
    instance-of v1, p1, Lcom/annimon/stream/OptionalBoolean;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 302
    :cond_a
    check-cast p1, Lcom/annimon/stream/OptionalBoolean;

    .line 303
    iget-boolean v1, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, p1, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    iget-boolean p1, p1, Lcom/annimon/stream/OptionalBoolean;->value:Z

    if-ne v1, p1, :cond_22

    goto :goto_23

    :cond_1b
    iget-boolean v1, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    iget-boolean p1, p1, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-ne v1, p1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public executeIfAbsent(Ljava/lang/Runnable;)Lcom/annimon/stream/OptionalBoolean;
    .registers 3

    .line 149
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

    move-result v0

    if-nez v0, :cond_9

    .line 150
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-object p0
.end method

.method public executeIfPresent(Lcom/annimon/stream/function/BooleanConsumer;)Lcom/annimon/stream/OptionalBoolean;
    .registers 2

    .line 138
    invoke-virtual {p0, p1}, Lcom/annimon/stream/OptionalBoolean;->ifPresent(Lcom/annimon/stream/function/BooleanConsumer;)V

    return-object p0
.end method

.method public filter(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/OptionalBoolean;
    .registers 3

    .line 177
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    .line 178
    :cond_7
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/BooleanPredicate;->test(Z)Z

    move-result p1

    if-eqz p1, :cond_11

    move-object p1, p0

    goto :goto_15

    :cond_11
    invoke-static {}, Lcom/annimon/stream/OptionalBoolean;->empty()Lcom/annimon/stream/OptionalBoolean;

    move-result-object p1

    :goto_15
    return-object p1
.end method

.method public filterNot(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/OptionalBoolean;
    .registers 2

    .line 190
    invoke-static {p1}, Lcom/annimon/stream/function/BooleanPredicate$Util;->negate(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/function/BooleanPredicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/OptionalBoolean;->filter(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/OptionalBoolean;

    move-result-object p1

    return-object p1
.end method

.method public getAsBoolean()Z
    .registers 2

    .line 78
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->orElseThrow()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 310
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x4cf

    goto :goto_f

    :cond_b
    const/16 v0, 0x4d5

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public ifPresent(Lcom/annimon/stream/function/BooleanConsumer;)V
    .registers 3

    .line 107
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_9

    .line 108
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/BooleanConsumer;->accept(Z)V

    :cond_9
    return-void
.end method

.method public ifPresentOrElse(Lcom/annimon/stream/function/BooleanConsumer;Ljava/lang/Runnable;)V
    .registers 4

    .line 122
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_a

    .line 123
    iget-boolean p2, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    invoke-interface {p1, p2}, Lcom/annimon/stream/function/BooleanConsumer;->accept(Z)V

    goto :goto_d

    .line 125
    :cond_a
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_d
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPresent()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    return v0
.end method

.method public map(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/OptionalBoolean;
    .registers 3

    .line 203
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

    move-result v0

    if-nez v0, :cond_b

    .line 204
    invoke-static {}, Lcom/annimon/stream/OptionalBoolean;->empty()Lcom/annimon/stream/OptionalBoolean;

    move-result-object p1

    return-object p1

    .line 206
    :cond_b
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/BooleanPredicate;->test(Z)Z

    move-result p1

    invoke-static {p1}, Lcom/annimon/stream/OptionalBoolean;->of(Z)Lcom/annimon/stream/OptionalBoolean;

    move-result-object p1

    return-object p1
.end method

.method public mapToObj(Lcom/annimon/stream/function/BooleanFunction;)Lcom/annimon/stream/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/BooleanFunction<",
            "TU;>;)",
            "Lcom/annimon/stream/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

    move-result v0

    if-nez v0, :cond_b

    .line 222
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1

    .line 224
    :cond_b
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/BooleanFunction;->apply(Z)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Optional;->ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public or(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/OptionalBoolean;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "Lcom/annimon/stream/OptionalBoolean;",
            ">;)",
            "Lcom/annimon/stream/OptionalBoolean;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/annimon/stream/OptionalBoolean;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 240
    :cond_7
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/annimon/stream/OptionalBoolean;

    return-object p1
.end method

.method public orElse(Z)Z
    .registers 3

    .line 251
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_6

    iget-boolean p1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    :cond_6
    return p1
.end method

.method public orElseGet(Lcom/annimon/stream/function/BooleanSupplier;)Z
    .registers 3

    .line 262
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_7

    iget-boolean p1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Lcom/annimon/stream/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    :goto_b
    return p1
.end method

.method public orElseThrow()Z
    .registers 3

    .line 273
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-nez v0, :cond_c

    .line 274
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_c
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    return v0
.end method

.method public orElseThrow(Lcom/annimon/stream/function/Supplier;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TX;>;)Z^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 288
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_7

    .line 289
    iget-boolean p1, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    return p1

    .line 291
    :cond_7
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 315
    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->isPresent:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/annimon/stream/OptionalBoolean;->value:Z

    if-eqz v0, :cond_b

    const-string v0, "OptionalBoolean[true]"

    goto :goto_10

    :cond_b
    const-string v0, "OptionalBoolean[false]"

    goto :goto_10

    :cond_e
    const-string v0, "OptionalBoolean.empty"

    :goto_10
    return-object v0
.end method
