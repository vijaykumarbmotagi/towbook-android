.class public Lcom/google/android/libraries/places/internal/ij$a;
.super Lcom/google/android/libraries/places/internal/hk;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/ij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/libraries/places/internal/ij<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/libraries/places/internal/ij$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/libraries/places/internal/hk<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/libraries/places/internal/ij;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public b:Z

.field private final c:Lcom/google/android/libraries/places/internal/ij;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/ij;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/hk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ij$a;->c:Lcom/google/android/libraries/places/internal/ij;

    .line 3
    sget-object v0, Lcom/google/android/libraries/places/internal/ij$d;->d:Lcom/google/android/libraries/places/internal/ij$d;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    return-void
.end method

.method private static a(Lcom/google/android/libraries/places/internal/ij;Lcom/google/android/libraries/places/internal/ij;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/google/android/libraries/places/internal/ka;->a:Lcom/google/android/libraries/places/internal/ka;

    .line 23
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/ka;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/libraries/places/internal/kd;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/libraries/places/internal/hk;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ij$a;

    return-object v0
.end method

.method protected final synthetic a(Lcom/google/android/libraries/places/internal/hj;)Lcom/google/android/libraries/places/internal/hk;
    .registers 2

    .line 25
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ij$a;->a(Lcom/google/android/libraries/places/internal/ij;)Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/libraries/places/internal/ij;)Lcom/google/android/libraries/places/internal/ij$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/ij$a;->a(Lcom/google/android/libraries/places/internal/ij;Lcom/google/android/libraries/places/internal/ij;)V

    return-object p0
.end method

.method public final b()V
    .registers 4

    .line 9
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz v0, :cond_19

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    sget-object v1, Lcom/google/android/libraries/places/internal/ij$d;->d:Lcom/google/android/libraries/places/internal/ij$d;

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/ij;->a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    .line 14
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/ij$a;->a(Lcom/google/android/libraries/places/internal/ij;Lcom/google/android/libraries/places/internal/ij;)V

    .line 15
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    :cond_19
    return-void
.end method

.method public final synthetic c()Lcom/google/android/libraries/places/internal/jo;
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz v0, :cond_7

    .line 31
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    return-object v0

    .line 32
    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->e()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 34
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->c:Lcom/google/android/libraries/places/internal/ij;

    .line 58
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->j()Lcom/google/android/libraries/places/internal/jp;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ij$a;

    .line 61
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz v1, :cond_11

    .line 62
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_1b

    .line 63
    :cond_11
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij;->e()V

    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 65
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 66
    :goto_1b
    check-cast v1, Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/ij$a;->a(Lcom/google/android/libraries/places/internal/ij;)Lcom/google/android/libraries/places/internal/ij$a;

    return-object v0
.end method

.method public final synthetic d()Lcom/google/android/libraries/places/internal/jo;
    .registers 3

    .line 39
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz v0, :cond_7

    .line 40
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_11

    .line 41
    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->e()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 43
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 44
    :goto_11
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    .line 45
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 47
    new-instance v0, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 48
    throw v0

    :cond_1f
    return-object v0
.end method

.method public final g()Z
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Lcom/google/android/libraries/places/internal/ij;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic k()Lcom/google/android/libraries/places/internal/jo;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ij$a;->c:Lcom/google/android/libraries/places/internal/ij;

    return-object v0
.end method
