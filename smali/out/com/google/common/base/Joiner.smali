.class public Lcom/google/common/base/Joiner;
.super Ljava/lang/Object;
.source "Joiner.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Joiner$MapJoiner;
    }
.end annotation


# instance fields
.field private final separator:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/common/base/Joiner;)V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iget-object p1, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Joiner;Lcom/google/common/base/Joiner$1;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1}, Lcom/google/common/base/Joiner;-><init>(Lcom/google/common/base/Joiner;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/base/Joiner;)Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    return-object p0
.end method

.method private static iterable(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 460
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    new-instance v0, Lcom/google/common/base/Joiner$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/common/base/Joiner$3;-><init>([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static on(C)Lcom/google/common/base/Joiner;
    .registers 2

    .line 74
    new-instance v0, Lcom/google/common/base/Joiner;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/google/common/base/Joiner;
    .registers 2

    .line 67
    new-instance v0, Lcom/google/common/base/Joiner;

    invoke-direct {v0, p0}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/lang/Iterable;)Ljava/lang/Appendable;
    .registers 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/lang/Iterable<",
            "*>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public final varargs appendTo(Ljava/lang/Appendable;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Appendable;
    .registers 5
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-static {p2, p3, p4}, Lcom/google/common/base/Joiner;->iterable(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/Appendable;Ljava/lang/Iterable;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .registers 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Iterator<",
            "*>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 106
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 107
    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 108
    iget-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 109
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_14

    :cond_2b
    return-object p1
.end method

.method public final appendTo(Ljava/lang/Appendable;[Ljava/lang/Object;)Ljava/lang/Appendable;
    .registers 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;[",
            "Ljava/lang/Object;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/Appendable;Ljava/lang/Iterable;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public final appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;
    .registers 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 141
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs appendTo(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 5
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 179
    invoke-static {p2, p3, p4}, Lcom/google/common/base/Joiner;->iterable(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
    .registers 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Iterator<",
            "*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 154
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-object p1

    :catch_4
    move-exception p1

    .line 156
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public final appendTo(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 168
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final join(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 187
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/Joiner;->join(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 213
    invoke-static {p1, p2, p3}, Lcom/google/common/base/Joiner;->iterable(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final join(Ljava/util/Iterator;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final join([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 205
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public skipNulls()Lcom/google/common/base/Joiner;
    .registers 2

    .line 245
    new-instance v0, Lcom/google/common/base/Joiner$2;

    invoke-direct {v0, p0, p0}, Lcom/google/common/base/Joiner$2;-><init>(Lcom/google/common/base/Joiner;Lcom/google/common/base/Joiner;)V

    return-object v0
.end method

.method toString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    .line 454
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_e
    return-object p1
.end method

.method public useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;
    .registers 3

    .line 221
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v0, Lcom/google/common/base/Joiner$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/common/base/Joiner$1;-><init>(Lcom/google/common/base/Joiner;Lcom/google/common/base/Joiner;Ljava/lang/String;)V

    return-object v0
.end method

.method public withKeyValueSeparator(C)Lcom/google/common/base/Joiner$MapJoiner;
    .registers 2

    .line 286
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object p1

    return-object p1
.end method

.method public withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;
    .registers 4

    .line 294
    new-instance v0, Lcom/google/common/base/Joiner$MapJoiner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/Joiner$MapJoiner;-><init>(Lcom/google/common/base/Joiner;Ljava/lang/String;Lcom/google/common/base/Joiner$1;)V

    return-object v0
.end method
