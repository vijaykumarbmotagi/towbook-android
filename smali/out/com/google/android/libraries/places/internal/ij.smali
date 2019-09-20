.class public abstract Lcom/google/android/libraries/places/internal/ij;
.super Lcom/google/android/libraries/places/internal/hj;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/ij$c;,
        Lcom/google/android/libraries/places/internal/ij$b;,
        Lcom/google/android/libraries/places/internal/ij$a;,
        Lcom/google/android/libraries/places/internal/ij$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/libraries/places/internal/ij<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/libraries/places/internal/ij$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/libraries/places/internal/hj<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/libraries/places/internal/ij<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field public r:Lcom/google/android/libraries/places/internal/ku;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/ij;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/hj;-><init>()V

    .line 3
    sget-object v0, Lcom/google/android/libraries/places/internal/ku;->a:Lcom/google/android/libraries/places/internal/ku;

    .line 4
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ij;->r:Lcom/google/android/libraries/places/internal/ku;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/ij;->a:I

    return-void
.end method

.method static a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/ij;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/libraries/places/internal/ij<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/google/android/libraries/places/internal/ij;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    if-nez v0, :cond_28

    .line 50
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1f

    .line 54
    sget-object v0, Lcom/google/android/libraries/places/internal/ij;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    goto :goto_28

    :catch_1f
    move-exception p0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_28
    :goto_28
    if-nez v0, :cond_46

    .line 56
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    .line 58
    sget-object v1, Lcom/google/android/libraries/places/internal/ij$d;->f:Lcom/google/android/libraries/places/internal/ij$d;

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/ij;->a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    if-nez v0, :cond_41

    .line 63
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 64
    :cond_41
    sget-object v1, Lcom/google/android/libraries/places/internal/ij;->b:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    return-object v0
.end method

.method public static a(Lcom/google/android/libraries/places/internal/iq;)Lcom/google/android/libraries/places/internal/iq;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/iq<",
            "TE;>;)",
            "Lcom/google/android/libraries/places/internal/iq<",
            "TE;>;"
        }
    .end annotation

    .line 96
    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/iq;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    shl-int/lit8 v0, v0, 0x1

    .line 99
    :goto_b
    invoke-interface {p0, v0}, Lcom/google/android/libraries/places/internal/iq;->b(I)Lcom/google/android/libraries/places/internal/iq;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/libraries/places/internal/jo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 68
    new-instance v0, Lcom/google/android/libraries/places/internal/kc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/kc;-><init>(Lcom/google/android/libraries/places/internal/jo;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 69
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 74
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_11

    .line 75
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 76
    :cond_11
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_18

    .line 77
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 78
    :cond_18
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_20
    move-exception p0

    .line 71
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/ij;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/libraries/places/internal/ij<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/google/android/libraries/places/internal/ij;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final a(Lcom/google/android/libraries/places/internal/ij;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/libraries/places/internal/ij<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/google/android/libraries/places/internal/ij$d;->a:Lcom/google/android/libraries/places/internal/ij$d;

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    return v2

    :cond_11
    if-nez v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 87
    :cond_15
    sget-object v0, Lcom/google/android/libraries/places/internal/ka;->a:Lcom/google/android/libraries/places/internal/ka;

    .line 88
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/ka;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/kd;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_29

    .line 90
    sget-object p1, Lcom/google/android/libraries/places/internal/ij$d;->b:Lcom/google/android/libraries/places/internal/ij$d;

    if-eqz v0, :cond_26

    move-object v1, p0

    .line 93
    :cond_26
    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    return v0
.end method


# virtual methods
.method public abstract a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final a(I)V
    .registers 2

    .line 32
    iput p1, p0, Lcom/google/android/libraries/places/internal/ij;->a:I

    return-void
.end method

.method public final a(Lcom/google/android/libraries/places/internal/hy;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/google/android/libraries/places/internal/ka;->a:Lcom/google/android/libraries/places/internal/ka;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/ka;->a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v0

    .line 40
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/lh;->a(Lcom/google/android/libraries/places/internal/hy;)Lcom/google/android/libraries/places/internal/lh;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/libraries/places/internal/kd;->a(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    return-void
.end method

.method final d()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/google/android/libraries/places/internal/ij;->a:I

    return v0
.end method

.method public e()V
    .registers 2

    .line 24
    sget-object v0, Lcom/google/android/libraries/places/internal/ka;->a:Lcom/google/android/libraries/places/internal/ka;

    .line 25
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/ka;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/kd;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 17
    :cond_4
    sget-object v0, Lcom/google/android/libraries/places/internal/ij$d;->f:Lcom/google/android/libraries/places/internal/ij$d;

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 p1, 0x0

    return p1

    .line 22
    :cond_19
    sget-object v0, Lcom/google/android/libraries/places/internal/ka;->a:Lcom/google/android/libraries/places/internal/ka;

    .line 23
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/ka;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v0

    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    invoke-interface {v0, p0, p1}, Lcom/google/android/libraries/places/internal/kd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Lcom/google/android/libraries/places/internal/ij$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/libraries/places/internal/ij<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/libraries/places/internal/ij$a<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/google/android/libraries/places/internal/ij$d;->e:Lcom/google/android/libraries/places/internal/ij$d;

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Lcom/google/android/libraries/places/internal/ij$a;

    return-object v0
.end method

.method public final g()Z
    .registers 2

    .line 30
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/ij;->a(Lcom/google/android/libraries/places/internal/ij;Z)Z

    move-result v0

    return v0
.end method

.method public final h()I
    .registers 3

    .line 42
    iget v0, p0, Lcom/google/android/libraries/places/internal/ij;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 44
    sget-object v0, Lcom/google/android/libraries/places/internal/ka;->a:Lcom/google/android/libraries/places/internal/ka;

    .line 45
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/ka;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/kd;->b(Ljava/lang/Object;)I

    move-result v0

    .line 46
    iput v0, p0, Lcom/google/android/libraries/places/internal/ij;->a:I

    .line 47
    :cond_11
    iget v0, p0, Lcom/google/android/libraries/places/internal/ij;->a:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/google/android/libraries/places/internal/ij;->q:I

    if-eqz v0, :cond_7

    .line 8
    iget v0, p0, Lcom/google/android/libraries/places/internal/ij;->q:I

    return v0

    .line 10
    :cond_7
    sget-object v0, Lcom/google/android/libraries/places/internal/ka;->a:Lcom/google/android/libraries/places/internal/ka;

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/ka;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/kd;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/ij;->q:I

    .line 12
    iget v0, p0, Lcom/google/android/libraries/places/internal/ij;->q:I

    return v0
.end method

.method public final synthetic i()Lcom/google/android/libraries/places/internal/jp;
    .registers 3

    .line 101
    sget-object v0, Lcom/google/android/libraries/places/internal/ij$d;->e:Lcom/google/android/libraries/places/internal/ij$d;

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    check-cast v0, Lcom/google/android/libraries/places/internal/ij$a;

    .line 104
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/ij$a;->a(Lcom/google/android/libraries/places/internal/ij;)Lcom/google/android/libraries/places/internal/ij$a;

    return-object v0
.end method

.method public final synthetic j()Lcom/google/android/libraries/places/internal/jp;
    .registers 3

    .line 108
    sget-object v0, Lcom/google/android/libraries/places/internal/ij$d;->e:Lcom/google/android/libraries/places/internal/ij$d;

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    check-cast v0, Lcom/google/android/libraries/places/internal/ij$a;

    return-object v0
.end method

.method public final synthetic k()Lcom/google/android/libraries/places/internal/jo;
    .registers 3

    .line 113
    sget-object v0, Lcom/google/android/libraries/places/internal/ij$d;->f:Lcom/google/android/libraries/places/internal/ij$d;

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/jh;->a(Lcom/google/android/libraries/places/internal/jo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
