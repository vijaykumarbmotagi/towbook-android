.class final Lcom/google/android/libraries/places/internal/je;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/ke;


# static fields
.field private static final b:Lcom/google/android/libraries/places/internal/jn;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/jn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lcom/google/android/libraries/places/internal/jf;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/jf;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/je;->b:Lcom/google/android/libraries/places/internal/jn;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/internal/jg;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/libraries/places/internal/jn;

    .line 3
    sget-object v2, Lcom/google/android/libraries/places/internal/ii;->a:Lcom/google/android/libraries/places/internal/ii;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    invoke-static {}, Lcom/google/android/libraries/places/internal/je;->a()Lcom/google/android/libraries/places/internal/jn;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/jg;-><init>([Lcom/google/android/libraries/places/internal/jn;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/je;-><init>(Lcom/google/android/libraries/places/internal/jn;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/places/internal/jn;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/il;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/jn;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/je;->a:Lcom/google/android/libraries/places/internal/jn;

    return-void
.end method

.method private static a()Lcom/google/android/libraries/places/internal/jn;
    .registers 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 58
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    .line 59
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/jn;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    .line 61
    :catch_19
    sget-object v0, Lcom/google/android/libraries/places/internal/je;->b:Lcom/google/android/libraries/places/internal/jn;

    return-object v0
.end method

.method private static a(Lcom/google/android/libraries/places/internal/jm;)Z
    .registers 2

    .line 57
    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/jm;->a()Lcom/google/android/libraries/places/internal/jz;

    move-result-object p0

    sget-object v0, Lcom/google/android/libraries/places/internal/jz;->a:Lcom/google/android/libraries/places/internal/jz;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/kd;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/libraries/places/internal/kd<",
            "TT;>;"
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kf;->a(Ljava/lang/Class;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/je;->a:Lcom/google/android/libraries/places/internal/jn;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/jn;->b(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/jm;

    move-result-object v1

    .line 12
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/jm;->b()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 13
    const-class v0, Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 14
    sget-object p1, Lcom/google/android/libraries/places/internal/kf;->c:Lcom/google/android/libraries/places/internal/kt;

    .line 15
    sget-object v0, Lcom/google/android/libraries/places/internal/ic;->a:Lcom/google/android/libraries/places/internal/ib;

    .line 17
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/jm;->c()Lcom/google/android/libraries/places/internal/jo;

    move-result-object v1

    .line 18
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/js;->a(Lcom/google/android/libraries/places/internal/kt;Lcom/google/android/libraries/places/internal/ib;Lcom/google/android/libraries/places/internal/jo;)Lcom/google/android/libraries/places/internal/js;

    move-result-object p1

    return-object p1

    .line 19
    :cond_24
    sget-object p1, Lcom/google/android/libraries/places/internal/kf;->a:Lcom/google/android/libraries/places/internal/kt;

    .line 20
    invoke-static {}, Lcom/google/android/libraries/places/internal/ic;->a()Lcom/google/android/libraries/places/internal/ib;

    move-result-object v0

    .line 21
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/jm;->c()Lcom/google/android/libraries/places/internal/jo;

    move-result-object v1

    .line 22
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/js;->a(Lcom/google/android/libraries/places/internal/kt;Lcom/google/android/libraries/places/internal/ib;Lcom/google/android/libraries/places/internal/jo;)Lcom/google/android/libraries/places/internal/js;

    move-result-object p1

    return-object p1

    .line 24
    :cond_33
    const-class v0, Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 25
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/je;->a(Lcom/google/android/libraries/places/internal/jm;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 27
    sget-object v2, Lcom/google/android/libraries/places/internal/jv;->b:Lcom/google/android/libraries/places/internal/ju;

    .line 28
    sget-object v3, Lcom/google/android/libraries/places/internal/ja;->b:Lcom/google/android/libraries/places/internal/ja;

    .line 29
    sget-object v4, Lcom/google/android/libraries/places/internal/kf;->c:Lcom/google/android/libraries/places/internal/kt;

    .line 30
    sget-object v5, Lcom/google/android/libraries/places/internal/ic;->a:Lcom/google/android/libraries/places/internal/ib;

    .line 31
    sget-object v6, Lcom/google/android/libraries/places/internal/jl;->b:Lcom/google/android/libraries/places/internal/jk;

    .line 32
    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/jr;->a(Lcom/google/android/libraries/places/internal/jm;Lcom/google/android/libraries/places/internal/ju;Lcom/google/android/libraries/places/internal/ja;Lcom/google/android/libraries/places/internal/kt;Lcom/google/android/libraries/places/internal/ib;Lcom/google/android/libraries/places/internal/jk;)Lcom/google/android/libraries/places/internal/jr;

    move-result-object p1

    goto :goto_82

    .line 34
    :cond_50
    sget-object v2, Lcom/google/android/libraries/places/internal/jv;->b:Lcom/google/android/libraries/places/internal/ju;

    .line 35
    sget-object v3, Lcom/google/android/libraries/places/internal/ja;->b:Lcom/google/android/libraries/places/internal/ja;

    .line 36
    sget-object v4, Lcom/google/android/libraries/places/internal/kf;->c:Lcom/google/android/libraries/places/internal/kt;

    const/4 v5, 0x0

    .line 38
    sget-object v6, Lcom/google/android/libraries/places/internal/jl;->b:Lcom/google/android/libraries/places/internal/jk;

    .line 39
    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/jr;->a(Lcom/google/android/libraries/places/internal/jm;Lcom/google/android/libraries/places/internal/ju;Lcom/google/android/libraries/places/internal/ja;Lcom/google/android/libraries/places/internal/kt;Lcom/google/android/libraries/places/internal/ib;Lcom/google/android/libraries/places/internal/jk;)Lcom/google/android/libraries/places/internal/jr;

    move-result-object p1

    return-object p1

    .line 41
    :cond_5e
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/je;->a(Lcom/google/android/libraries/places/internal/jm;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 43
    sget-object v2, Lcom/google/android/libraries/places/internal/jv;->a:Lcom/google/android/libraries/places/internal/ju;

    .line 44
    sget-object v3, Lcom/google/android/libraries/places/internal/ja;->a:Lcom/google/android/libraries/places/internal/ja;

    .line 45
    sget-object v4, Lcom/google/android/libraries/places/internal/kf;->a:Lcom/google/android/libraries/places/internal/kt;

    .line 46
    invoke-static {}, Lcom/google/android/libraries/places/internal/ic;->a()Lcom/google/android/libraries/places/internal/ib;

    move-result-object v5

    .line 47
    sget-object v6, Lcom/google/android/libraries/places/internal/jl;->a:Lcom/google/android/libraries/places/internal/jk;

    .line 48
    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/jr;->a(Lcom/google/android/libraries/places/internal/jm;Lcom/google/android/libraries/places/internal/ju;Lcom/google/android/libraries/places/internal/ja;Lcom/google/android/libraries/places/internal/kt;Lcom/google/android/libraries/places/internal/ib;Lcom/google/android/libraries/places/internal/jk;)Lcom/google/android/libraries/places/internal/jr;

    move-result-object p1

    return-object p1

    .line 50
    :cond_75
    sget-object v2, Lcom/google/android/libraries/places/internal/jv;->a:Lcom/google/android/libraries/places/internal/ju;

    .line 51
    sget-object v3, Lcom/google/android/libraries/places/internal/ja;->a:Lcom/google/android/libraries/places/internal/ja;

    .line 52
    sget-object v4, Lcom/google/android/libraries/places/internal/kf;->b:Lcom/google/android/libraries/places/internal/kt;

    const/4 v5, 0x0

    .line 54
    sget-object v6, Lcom/google/android/libraries/places/internal/jl;->a:Lcom/google/android/libraries/places/internal/jk;

    .line 55
    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/jr;->a(Lcom/google/android/libraries/places/internal/jm;Lcom/google/android/libraries/places/internal/ju;Lcom/google/android/libraries/places/internal/ja;Lcom/google/android/libraries/places/internal/kt;Lcom/google/android/libraries/places/internal/ib;Lcom/google/android/libraries/places/internal/jk;)Lcom/google/android/libraries/places/internal/jr;

    move-result-object p1

    :goto_82
    return-object p1
.end method
