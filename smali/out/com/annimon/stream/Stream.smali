.class public Lcom/annimon/stream/Stream;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final MATCH_ALL:I = 0x1

.field private static final MATCH_ANY:I = 0x0

.field private static final MATCH_NONE:I = 0x2


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final params:Lcom/annimon/stream/internal/Params;


# direct methods
.method private constructor <init>(Lcom/annimon/stream/internal/Params;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/internal/Params;",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 457
    new-instance v0, Lcom/annimon/stream/iterator/LazyIterator;

    invoke-direct {v0, p2}, Lcom/annimon/stream/iterator/LazyIterator;-><init>(Ljava/lang/Iterable;)V

    invoke-direct {p0, p1, v0}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-void
.end method

.method constructor <init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/internal/Params;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    .line 462
    iput-object p2, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 453
    new-instance v0, Lcom/annimon/stream/iterator/LazyIterator;

    invoke-direct {v0, p1}, Lcom/annimon/stream/iterator/LazyIterator;-><init>(Ljava/lang/Iterable;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 449
    invoke-direct {p0, v0, p1}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-void
.end method

.method public static concat(Lcom/annimon/stream/Stream;Lcom/annimon/stream/Stream;)Lcom/annimon/stream/Stream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/Stream<",
            "+TT;>;",
            "Lcom/annimon/stream/Stream<",
            "+TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 288
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v0, Lcom/annimon/stream/Stream;

    new-instance v1, Lcom/annimon/stream/operator/ObjConcat;

    iget-object v2, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    iget-object v3, p1, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v1, v2, v3}, Lcom/annimon/stream/operator/ObjConcat;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/Stream;-><init>(Ljava/util/Iterator;)V

    .line 291
    invoke-static {p0, p1}, Lcom/annimon/stream/internal/Compose;->closeables(Ljava/io/Closeable;Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/annimon/stream/Stream;->onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Ljava/util/Iterator;Ljava/util/Iterator;)Lcom/annimon/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 312
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v0, Lcom/annimon/stream/Stream;

    new-instance v1, Lcom/annimon/stream/operator/ObjConcat;

    invoke-direct {v1, p0, p1}, Lcom/annimon/stream/operator/ObjConcat;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/Stream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static empty()Lcom/annimon/stream/Stream;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Lcom/annimon/stream/function/Supplier;)Lcom/annimon/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 218
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v0, Lcom/annimon/stream/Stream;

    new-instance v1, Lcom/annimon/stream/operator/ObjGenerate;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/ObjGenerate;-><init>(Lcom/annimon/stream/function/Supplier;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/Stream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static iterate(Ljava/lang/Object;Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/UnaryOperator;)Lcom/annimon/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;",
            "Lcom/annimon/stream/function/UnaryOperator<",
            "TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 267
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {p0, p2}, Lcom/annimon/stream/Stream;->iterate(Ljava/lang/Object;Lcom/annimon/stream/function/UnaryOperator;)Lcom/annimon/stream/Stream;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Stream;->takeWhile(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;Lcom/annimon/stream/function/UnaryOperator;)Lcom/annimon/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/annimon/stream/function/UnaryOperator<",
            "TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 241
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v0, Lcom/annimon/stream/Stream;

    new-instance v1, Lcom/annimon/stream/operator/ObjIterate;

    invoke-direct {v1, p0, p1}, Lcom/annimon/stream/operator/ObjIterate;-><init>(Ljava/lang/Object;Lcom/annimon/stream/function/UnaryOperator;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/Stream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method private match(Lcom/annimon/stream/function/Predicate;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-ne p2, v1, :cond_b

    const/4 p2, 0x1

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    .line 2060
    :cond_c
    :goto_c
    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2061
    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2077
    invoke-interface {p1, v3}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    xor-int v4, v3, p2

    if-eqz v4, :cond_c

    if-eqz v2, :cond_27

    if-eqz v3, :cond_27

    const/4 v0, 0x1

    :cond_27
    return v0

    :cond_28
    xor-int/lit8 p1, v2, 0x1

    return p1
.end method

.method public static merge(Lcom/annimon/stream/Stream;Lcom/annimon/stream/Stream;Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/Stream<",
            "+TT;>;",
            "Lcom/annimon/stream/Stream<",
            "+TT;>;",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TT;-TT;",
            "Lcom/annimon/stream/operator/ObjMerge$MergeResult;",
            ">;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 403
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object p0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    iget-object p1, p1, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-static {p0, p1, p2}, Lcom/annimon/stream/Stream;->merge(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TT;-TT;",
            "Lcom/annimon/stream/operator/ObjMerge$MergeResult;",
            ">;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 438
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v0, Lcom/annimon/stream/Stream;

    new-instance v1, Lcom/annimon/stream/operator/ObjMerge;

    invoke-direct {v1, p0, p1, p2}, Lcom/annimon/stream/operator/ObjMerge;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/annimon/stream/function/BiFunction;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/Stream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 72
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Lcom/annimon/stream/Stream;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static of(Ljava/util/Iterator;)Lcom/annimon/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/annimon/stream/Stream;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static of(Ljava/util/Map;)Lcom/annimon/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/annimon/stream/Stream;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 85
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    array-length v0, p0

    if-nez v0, :cond_b

    .line 87
    invoke-static {}, Lcom/annimon/stream/Stream;->empty()Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0

    .line 89
    :cond_b
    new-instance v0, Lcom/annimon/stream/Stream;

    new-instance v1, Lcom/annimon/stream/operator/ObjArray;

    invoke-direct {v1, p0}, Lcom/annimon/stream/operator/ObjArray;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/Stream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 156
    invoke-static {}, Lcom/annimon/stream/Stream;->empty()Lcom/annimon/stream/Stream;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-static {p0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method public static ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 103
    invoke-static {}, Lcom/annimon/stream/Stream;->empty()Lcom/annimon/stream/Stream;

    move-result-object p0

    goto :goto_11

    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method public static ofNullable(Ljava/util/Iterator;)Lcom/annimon/stream/Stream;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 143
    invoke-static {}, Lcom/annimon/stream/Stream;->empty()Lcom/annimon/stream/Stream;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-static {p0}, Lcom/annimon/stream/Stream;->of(Ljava/util/Iterator;)Lcom/annimon/stream/Stream;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method public static ofNullable(Ljava/util/Map;)Lcom/annimon/stream/Stream;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 130
    invoke-static {}, Lcom/annimon/stream/Stream;->empty()Lcom/annimon/stream/Stream;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-static {p0}, Lcom/annimon/stream/Stream;->of(Ljava/util/Map;)Lcom/annimon/stream/Stream;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method public static ofNullable([Ljava/lang/Object;)Lcom/annimon/stream/Stream;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 116
    invoke-static {}, Lcom/annimon/stream/Stream;->empty()Lcom/annimon/stream/Stream;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-static {p0}, Lcom/annimon/stream/Stream;->of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method public static range(II)Lcom/annimon/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-static {p0, p1}, Lcom/annimon/stream/IntStream;->range(II)Lcom/annimon/stream/IntStream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/annimon/stream/IntStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static range(JJ)Lcom/annimon/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-static {p0, p1, p2, p3}, Lcom/annimon/stream/LongStream;->range(JJ)Lcom/annimon/stream/LongStream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/annimon/stream/LongStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static rangeClosed(II)Lcom/annimon/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 194
    invoke-static {p0, p1}, Lcom/annimon/stream/IntStream;->rangeClosed(II)Lcom/annimon/stream/IntStream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/annimon/stream/IntStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static rangeClosed(JJ)Lcom/annimon/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-static {p0, p1, p2, p3}, Lcom/annimon/stream/LongStream;->rangeClosed(JJ)Lcom/annimon/stream/LongStream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/annimon/stream/LongStream;->boxed()Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lcom/annimon/stream/Stream;Lcom/annimon/stream/Stream;Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/Stream<",
            "+TF;>;",
            "Lcom/annimon/stream/Stream<",
            "+TS;>;",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TF;-TS;+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 339
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object p0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    iget-object p1, p1, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-static {p0, p1, p2}, Lcom/annimon/stream/Stream;->zip(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TF;>;",
            "Ljava/util/Iterator<",
            "+TS;>;",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TF;-TS;+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 368
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    new-instance v0, Lcom/annimon/stream/Stream;

    new-instance v1, Lcom/annimon/stream/operator/ObjZip;

    invoke-direct {v1, p0, p1, p2}, Lcom/annimon/stream/operator/ObjZip;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/annimon/stream/function/BiFunction;)V

    invoke-direct {v0, v1}, Lcom/annimon/stream/Stream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method


# virtual methods
.method public allMatch(Lcom/annimon/stream/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1823
    invoke-direct {p0, p1, v0}, Lcom/annimon/stream/Stream;->match(Lcom/annimon/stream/function/Predicate;I)Z

    move-result p1

    return p1
.end method

.method public anyMatch(Lcom/annimon/stream/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1800
    invoke-direct {p0, p1, v0}, Lcom/annimon/stream/Stream;->match(Lcom/annimon/stream/function/Predicate;I)Z

    move-result p1

    return p1
.end method

.method public chunkBy(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1053
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjChunkBy;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjChunkBy;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public close()V
    .registers 3

    .line 2046
    iget-object v0, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 2047
    iget-object v0, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    iget-object v0, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2048
    iget-object v0, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    :cond_16
    return-void
.end method

.method public collect(Lcom/annimon/stream/Collector;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/Collector<",
            "-TT;TA;TR;>;)TR;"
        }
    .end annotation

    .line 1716
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->supplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1717
    :goto_8
    iget-object v1, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1718
    iget-object v1, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1719
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->accumulator()Lcom/annimon/stream/function/BiConsumer;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/annimon/stream/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 1721
    :cond_1e
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 1722
    invoke-interface {p1}, Lcom/annimon/stream/Collector;->finisher()Lcom/annimon/stream/function/Function;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1723
    :cond_2d
    invoke-static {}, Lcom/annimon/stream/Collectors;->castIdentity()Lcom/annimon/stream/function/Function;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public collect(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Supplier<",
            "TR;>;",
            "Lcom/annimon/stream/function/BiConsumer<",
            "TR;-TT;>;)TR;"
        }
    .end annotation

    .line 1696
    invoke-interface {p1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    .line 1697
    :goto_4
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1698
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1699
    invoke-interface {p2, p1, v0}, Lcom/annimon/stream/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_16
    return-object p1
.end method

.method public count()J
    .registers 7

    const-wide/16 v0, 0x0

    .line 1773
    :goto_2
    iget-object v2, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1774
    iget-object v2, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    move-wide v0, v4

    goto :goto_2

    :cond_15
    return-wide v0
.end method

.method public custom(Lcom/annimon/stream/function/Function;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "Lcom/annimon/stream/Stream<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    .line 531
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-interface {p1, p0}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public distinct()Lcom/annimon/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 918
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjDistinct;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3}, Lcom/annimon/stream/operator/ObjDistinct;-><init>(Ljava/util/Iterator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public distinctBy(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 940
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjDistinctBy;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjDistinctBy;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public dropWhile(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1367
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjDropWhile;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjDropWhile;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Predicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public dropWhileIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1415
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjDropWhileIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/IndexedIterator;

    iget-object v4, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/IndexedIterator;-><init>(IILjava/util/Iterator;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/ObjDropWhileIndexed;-><init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public dropWhileIndexed(Lcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1389
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/Stream;->dropWhileIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public equalsOnly(Ljava/lang/Object;)Lcom/annimon/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 672
    new-instance v0, Lcom/annimon/stream/Stream$2;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/Stream$2;-><init>(Lcom/annimon/stream/Stream;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 551
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjFilter;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjFilter;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Predicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public filterIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 601
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjFilterIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/IndexedIterator;

    iget-object v4, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/IndexedIterator;-><init>(IILjava/util/Iterator;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/ObjFilterIndexed;-><init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public filterIndexed(Lcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 574
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/Stream;->filterIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 615
    invoke-static {p1}, Lcom/annimon/stream/function/Predicate$Util;->negate(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public findFirst()Lcom/annimon/stream/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 1916
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1917
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Optional;->of(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object v0

    return-object v0

    .line 1919
    :cond_13
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object v0

    return-object v0
.end method

.method public findIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Optional;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Optional<",
            "Lcom/annimon/stream/IntPair<",
            "TT;>;>;"
        }
    .end annotation

    .line 1896
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1897
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1898
    invoke-interface {p3, p1, v0}, Lcom/annimon/stream/function/IndexedPredicate;->test(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1899
    new-instance p2, Lcom/annimon/stream/IntPair;

    invoke-direct {p2, p1, v0}, Lcom/annimon/stream/IntPair;-><init>(ILjava/lang/Object;)V

    invoke-static {p2}, Lcom/annimon/stream/Optional;->of(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1

    :cond_1e
    add-int/2addr p1, p2

    goto :goto_0

    .line 1903
    :cond_20
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public findIndexed(Lcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Optional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Optional<",
            "Lcom/annimon/stream/IntPair<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1868
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/Stream;->findIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public findLast()Lcom/annimon/stream/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 1933
    new-instance v0, Lcom/annimon/stream/Stream$7;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream$7;-><init>(Lcom/annimon/stream/Stream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/Stream;->reduce(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Optional;

    move-result-object v0

    return-object v0
.end method

.method public findSingle()Lcom/annimon/stream/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 2002
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2003
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2004
    iget-object v1, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2005
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream contains more than one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2007
    :cond_1e
    invoke-static {v0}, Lcom/annimon/stream/Optional;->of(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object v0

    return-object v0

    .line 2010
    :cond_23
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object v0

    return-object v0
.end method

.method public flatMap(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+",
            "Lcom/annimon/stream/Stream<",
            "+TR;>;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 810
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjFlatMap;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjFlatMap;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public flatMapToDouble(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/DoubleStream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+",
            "Lcom/annimon/stream/DoubleStream;",
            ">;)",
            "Lcom/annimon/stream/DoubleStream;"
        }
    .end annotation

    .line 855
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjFlatMapToDouble;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjFlatMapToDouble;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public flatMapToInt(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/IntStream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+",
            "Lcom/annimon/stream/IntStream;",
            ">;)",
            "Lcom/annimon/stream/IntStream;"
        }
    .end annotation

    .line 825
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjFlatMapToInt;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjFlatMapToInt;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public flatMapToLong(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/LongStream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+",
            "Lcom/annimon/stream/LongStream;",
            ">;)",
            "Lcom/annimon/stream/LongStream;"
        }
    .end annotation

    .line 840
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjFlatMapToLong;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjFlatMapToLong;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public forEach(Lcom/annimon/stream/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1485
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1486
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_12
    return-void
.end method

.method public forEachIndexed(IILcom/annimon/stream/function/IndexedConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/annimon/stream/function/IndexedConsumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1514
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1515
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lcom/annimon/stream/function/IndexedConsumer;->accept(ILjava/lang/Object;)V

    add-int/2addr p1, p2

    goto :goto_0

    :cond_13
    return-void
.end method

.method public forEachIndexed(Lcom/annimon/stream/function/IndexedConsumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IndexedConsumer<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1499
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/Stream;->forEachIndexed(IILcom/annimon/stream/function/IndexedConsumer;)V

    return-void
.end method

.method public groupBy(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TK;>;)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1028
    invoke-static {p1}, Lcom/annimon/stream/Collectors;->groupingBy(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Stream;->collect(Lcom/annimon/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 1029
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public indexed()Lcom/annimon/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "Lcom/annimon/stream/IntPair<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 874
    invoke-virtual {p0, v0, v1}, Lcom/annimon/stream/Stream;->indexed(II)Lcom/annimon/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public indexed(II)Lcom/annimon/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/annimon/stream/Stream<",
            "Lcom/annimon/stream/IntPair<",
            "TT;>;>;"
        }
    .end annotation

    .line 895
    new-instance v0, Lcom/annimon/stream/Stream$3;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream$3;-><init>(Lcom/annimon/stream/Stream;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/annimon/stream/Stream;->mapIndexed(IILcom/annimon/stream/function/IndexedFunction;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public limit(J)Lcom/annimon/stream/Stream;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_e

    .line 1442
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    cmp-long v2, p1, v0

    if-nez v2, :cond_17

    .line 1445
    invoke-static {}, Lcom/annimon/stream/Stream;->empty()Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1

    .line 1447
    :cond_17
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjLimit;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/ObjLimit;-><init>(Ljava/util/Iterator;J)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 697
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjMap;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjMap;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Function;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public mapIndexed(IILcom/annimon/stream/function/IndexedFunction;)Lcom/annimon/stream/Stream;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(II",
            "Lcom/annimon/stream/function/IndexedFunction<",
            "-TT;+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 745
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjMapIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/IndexedIterator;

    iget-object v4, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/IndexedIterator;-><init>(IILjava/util/Iterator;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/ObjMapIndexed;-><init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public mapIndexed(Lcom/annimon/stream/function/IndexedFunction;)Lcom/annimon/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/IndexedFunction<",
            "-TT;+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 719
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/Stream;->mapIndexed(IILcom/annimon/stream/function/IndexedFunction;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public mapToDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/DoubleStream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/DoubleStream;"
        }
    .end annotation

    .line 788
    new-instance v0, Lcom/annimon/stream/DoubleStream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjMapToDouble;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjMapToDouble;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/ToDoubleFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/DoubleStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method

.method public mapToInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/IntStream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ToIntFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/IntStream;"
        }
    .end annotation

    .line 760
    new-instance v0, Lcom/annimon/stream/IntStream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjMapToInt;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjMapToInt;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/ToIntFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/IntStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public mapToLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/LongStream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ToLongFunction<",
            "-TT;>;)",
            "Lcom/annimon/stream/LongStream;"
        }
    .end annotation

    .line 774
    new-instance v0, Lcom/annimon/stream/LongStream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjMapToLong;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjMapToLong;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/ToLongFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/LongStream;-><init>(Lcom/annimon/stream/internal/Params;Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;)V

    return-object v0
.end method

.method public max(Ljava/util/Comparator;)Lcom/annimon/stream/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 1761
    invoke-static {p1}, Lcom/annimon/stream/function/BinaryOperator$Util;->maxBy(Ljava/util/Comparator;)Lcom/annimon/stream/function/BinaryOperator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Stream;->reduce(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/util/Comparator;)Lcom/annimon/stream/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 1742
    invoke-static {p1}, Lcom/annimon/stream/function/BinaryOperator$Util;->minBy(Ljava/util/Comparator;)Lcom/annimon/stream/function/BinaryOperator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Stream;->reduce(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Optional;

    move-result-object p1

    return-object p1
.end method

.method public noneMatch(Lcom/annimon/stream/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1846
    invoke-direct {p0, p1, v0}, Lcom/annimon/stream/Stream;->match(Lcom/annimon/stream/function/Predicate;I)Z

    move-result p1

    return p1
.end method

.method public nullsOnly()Lcom/annimon/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 659
    invoke-static {}, Lcom/annimon/stream/function/Predicate$Util;->notNull()Lcom/annimon/stream/function/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/annimon/stream/Stream;->filterNot(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public onClose(Ljava/lang/Runnable;)Lcom/annimon/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 2024
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    iget-object v0, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    if-nez v0, :cond_f

    .line 2027
    new-instance v0, Lcom/annimon/stream/internal/Params;

    invoke-direct {v0}, Lcom/annimon/stream/internal/Params;-><init>()V

    .line 2028
    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    goto :goto_19

    .line 2030
    :cond_f
    iget-object v0, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    .line 2031
    iget-object v1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 2032
    invoke-static {v1, p1}, Lcom/annimon/stream/internal/Compose;->runnables(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, v0, Lcom/annimon/stream/internal/Params;->closeHandler:Ljava/lang/Runnable;

    .line 2034
    :goto_19
    new-instance p1, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {p1, v0, v1}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object p1
.end method

.method public peek(Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/Stream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1150
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjPeek;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjPeek;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Consumer;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public reduce(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Optional;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/BiFunction<",
            "TT;TT;TT;>;)",
            "Lcom/annimon/stream/Optional<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1621
    :goto_2
    iget-object v2, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1622
    iget-object v2, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_15

    const/4 v0, 0x1

    move-object v1, v2

    goto :goto_2

    .line 1627
    :cond_15
    invoke-interface {p1, v1, v2}, Lcom/annimon/stream/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_1a
    if-eqz v0, :cond_21

    .line 1630
    invoke-static {v1}, Lcom/annimon/stream/Optional;->of(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object p1

    goto :goto_25

    :cond_21
    invoke-static {}, Lcom/annimon/stream/Optional;->empty()Lcom/annimon/stream/Optional;

    move-result-object p1

    :goto_25
    return-object p1
.end method

.method public reduce(Ljava/lang/Object;Lcom/annimon/stream/function/BiFunction;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TR;-TT;+TR;>;)TR;"
        }
    .end annotation

    .line 1540
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1541
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1542
    invoke-interface {p2, p1, v0}, Lcom/annimon/stream/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_13
    return-object p1
.end method

.method public reduceIndexed(IILjava/lang/Object;Lcom/annimon/stream/function/IndexedBiFunction;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(IITR;",
            "Lcom/annimon/stream/function/IndexedBiFunction<",
            "-TR;-TT;+TR;>;)TR;"
        }
    .end annotation

    .line 1601
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1602
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1603
    invoke-interface {p4, p1, p3, v0}, Lcom/annimon/stream/function/IndexedBiFunction;->apply(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p1, p2

    goto :goto_0

    :cond_14
    return-object p3
.end method

.method public reduceIndexed(Ljava/lang/Object;Lcom/annimon/stream/function/IndexedBiFunction;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/annimon/stream/function/IndexedBiFunction<",
            "-TR;-TT;+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1569
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/annimon/stream/Stream;->reduceIndexed(IILjava/lang/Object;Lcom/annimon/stream/function/IndexedBiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sample(I)Lcom/annimon/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    if-gtz p1, :cond_a

    .line 1073
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepWidth cannot be zero or negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    return-object p0

    .line 1075
    :cond_e
    invoke-virtual {p0, v0, p1}, Lcom/annimon/stream/Stream;->slidingWindow(II)Lcom/annimon/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/annimon/stream/Stream$5;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream$5;-><init>(Lcom/annimon/stream/Stream;)V

    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Stream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/BiFunction<",
            "TT;TT;TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1174
    invoke-static {p1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjScan;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjScan;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/BiFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public scan(Ljava/lang/Object;Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/Stream;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TR;-TT;+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 1202
    invoke-static {p2}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjScanIdentity;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/ObjScanIdentity;-><init>(Ljava/util/Iterator;Ljava/lang/Object;Lcom/annimon/stream/function/BiFunction;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public select(Ljava/lang/Class;)Lcom/annimon/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TTT;>;"
        }
    .end annotation

    .line 630
    new-instance v0, Lcom/annimon/stream/Stream$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/Stream$1;-><init>(Lcom/annimon/stream/Stream;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public single()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1966
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1967
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1968
    iget-object v1, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1969
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream contains more than one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    return-object v0

    .line 1974
    :cond_1f
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Stream contains no element"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)Lcom/annimon/stream/Stream;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_e

    .line 1472
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    cmp-long v2, p1, v0

    if-nez v2, :cond_13

    return-object p0

    .line 1474
    :cond_13
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjSkip;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/ObjSkip;-><init>(Ljava/util/Iterator;J)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public slidingWindow(I)Lcom/annimon/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1102
    invoke-virtual {p0, p1, v0}, Lcom/annimon/stream/Stream;->slidingWindow(II)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public slidingWindow(II)Lcom/annimon/stream/Stream;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/annimon/stream/Stream<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    if-gtz p1, :cond_a

    .line 1136
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "windowSize cannot be zero or negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-gtz p2, :cond_14

    .line 1137
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "stepWidth cannot be zero or negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1138
    :cond_14
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjSlidingWindow;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1, p2}, Lcom/annimon/stream/operator/ObjSlidingWindow;-><init>(Ljava/util/Iterator;II)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public sortBy(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Comparable<",
            "-TR;>;>(",
            "Lcom/annimon/stream/function/Function<",
            "-TT;+TR;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1008
    invoke-static {p1}, Lcom/annimon/stream/ComparatorCompat;->comparing(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/ComparatorCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Stream;->sorted(Ljava/util/Comparator;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public sorted()Lcom/annimon/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 959
    new-instance v0, Lcom/annimon/stream/Stream$4;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream$4;-><init>(Lcom/annimon/stream/Stream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/Stream;->sorted(Ljava/util/Comparator;)Lcom/annimon/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public sorted(Ljava/util/Comparator;)Lcom/annimon/stream/Stream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 987
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjSorted;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjSorted;-><init>(Ljava/util/Iterator;Ljava/util/Comparator;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public takeUntil(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1294
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjTakeUntil;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjTakeUntil;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Predicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public takeUntilIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1346
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/IndexedIterator;

    iget-object v4, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/IndexedIterator;-><init>(IILjava/util/Iterator;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;-><init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public takeUntilIndexed(Lcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1318
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/Stream;->takeUntilIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1222
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjTakeWhile;

    iget-object v3, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v2, v3, p1}, Lcom/annimon/stream/operator/ObjTakeWhile;-><init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Predicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public takeWhileIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1270
    new-instance v0, Lcom/annimon/stream/Stream;

    iget-object v1, p0, Lcom/annimon/stream/Stream;->params:Lcom/annimon/stream/internal/Params;

    new-instance v2, Lcom/annimon/stream/operator/ObjTakeWhileIndexed;

    new-instance v3, Lcom/annimon/stream/iterator/IndexedIterator;

    iget-object v4, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-direct {v3, p1, p2, v4}, Lcom/annimon/stream/iterator/IndexedIterator;-><init>(IILjava/util/Iterator;)V

    invoke-direct {v2, v3, p3}, Lcom/annimon/stream/operator/ObjTakeWhileIndexed;-><init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedPredicate;)V

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/Stream;-><init>(Lcom/annimon/stream/internal/Params;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public takeWhileIndexed(Lcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1244
    invoke-virtual {p0, v0, v1, p1}, Lcom/annimon/stream/Stream;->takeWhileIndexed(IILcom/annimon/stream/function/IndexedPredicate;)Lcom/annimon/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 1642
    new-instance v0, Lcom/annimon/stream/Stream$6;

    invoke-direct {v0, p0}, Lcom/annimon/stream/Stream$6;-><init>(Lcom/annimon/stream/Stream;)V

    invoke-virtual {p0, v0}, Lcom/annimon/stream/Stream;->toArray(Lcom/annimon/stream/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/annimon/stream/function/IntFunction;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/IntFunction<",
            "[TR;>;)[TR;"
        }
    .end annotation

    .line 1661
    iget-object v0, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-static {v0, p1}, Lcom/annimon/stream/internal/Operators;->toArray(Ljava/util/Iterator;Lcom/annimon/stream/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1678
    :goto_5
    iget-object v1, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1679
    iget-object v1, p0, Lcom/annimon/stream/Stream;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_17
    return-object v0
.end method

.method public withoutNulls()Lcom/annimon/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 647
    invoke-static {}, Lcom/annimon/stream/function/Predicate$Util;->notNull()Lcom/annimon/stream/function/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object v0

    return-object v0
.end method
