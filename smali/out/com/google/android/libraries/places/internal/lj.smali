.class public final Lcom/google/android/libraries/places/internal/lj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/lm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/lm<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private volatile b:Lcom/google/android/libraries/places/internal/lm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/lm<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/lj;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/places/internal/lm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/lm<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/libraries/places/internal/lj;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->c:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/lm;

    return-void
.end method

.method public static a(Lcom/google/android/libraries/places/internal/lm;)Lcom/google/android/libraries/places/internal/lm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/google/android/libraries/places/internal/lm<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lcom/google/android/libraries/places/internal/lm<",
            "TT;>;"
        }
    .end annotation

    .line 20
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/jh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    instance-of v0, p0, Lcom/google/android/libraries/places/internal/lj;

    if-eqz v0, :cond_8

    return-object p0

    .line 23
    :cond_8
    new-instance v0, Lcom/google/android/libraries/places/internal/lj;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/lj;-><init>(Lcom/google/android/libraries/places/internal/lm;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->c:Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/google/android/libraries/places/internal/lj;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_6d

    .line 7
    monitor-enter p0

    .line 8
    :try_start_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->c:Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/google/android/libraries/places/internal/lj;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_68

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/lm;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/lm;->b()Ljava/lang/Object;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/lj;->c:Ljava/lang/Object;

    .line 12
    sget-object v2, Lcom/google/android/libraries/places/internal/lj;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_1f

    instance-of v2, v1, Lcom/google/android/libraries/places/internal/ll;

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-eqz v2, :cond_63

    if-eq v1, v0, :cond_63

    .line 14
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x76

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Scoped provider was invoked recursively returning different results: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " & "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". This is likely due to a circular dependency."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_63
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/lm;

    .line 18
    :cond_68
    monitor-exit p0

    goto :goto_6d

    :catchall_6a
    move-exception v0

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_7 .. :try_end_6c} :catchall_6a

    throw v0

    :cond_6d
    :goto_6d
    return-object v0
.end method
