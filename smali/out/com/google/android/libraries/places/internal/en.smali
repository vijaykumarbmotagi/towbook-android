.class final synthetic Lcom/google/android/libraries/places/internal/en;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/el;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/el;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/en;->a:Lcom/google/android/libraries/places/internal/el;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/en;->a:Lcom/google/android/libraries/places/internal/el;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/google/android/libraries/places/internal/el;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 3
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/el;->d:Lcom/google/android/libraries/places/internal/es;

    .line 4
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/el;->a(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/libraries/places/internal/es;->a(Lcom/google/android/libraries/places/internal/es;Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/es;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/el;->a(Lcom/google/android/libraries/places/internal/es;)V

    return-void
.end method
