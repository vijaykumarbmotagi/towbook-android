.class final Lcom/google/android/libraries/places/internal/ka;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/ka;


# instance fields
.field private final b:Lcom/google/android/libraries/places/internal/ke;

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/kd<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/google/android/libraries/places/internal/ka;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/ka;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/ka;->a:Lcom/google/android/libraries/places/internal/ka;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ka;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 16
    new-instance v0, Lcom/google/android/libraries/places/internal/je;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/je;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ka;->b:Lcom/google/android/libraries/places/internal/ke;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/kd;
    .registers 4
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

    const-string v0, "messageType"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/il;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ka;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/kd;

    if-nez v0, :cond_2a

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ka;->b:Lcom/google/android/libraries/places/internal/ke;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/ke;->a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v0

    const-string v1, "messageType"

    .line 6
    invoke-static {p1, v1}, Lcom/google/android/libraries/places/internal/il;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "schema"

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/il;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ka;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/kd;

    if-eqz p1, :cond_2a

    move-object v0, p1

    :cond_2a
    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/kd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/libraries/places/internal/kd<",
            "TT;>;"
        }
    .end annotation

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ka;->a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/kd;

    move-result-object p1

    return-object p1
.end method
