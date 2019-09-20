.class public final synthetic Lcom/google/android/libraries/places/internal/eh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/ff;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/ff;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/eh;->a:Lcom/google/android/libraries/places/internal/ff;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/eh;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/libraries/places/internal/eh;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/eh;->a:Lcom/google/android/libraries/places/internal/ff;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/eh;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/libraries/places/internal/eh;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/ff;->b(Ljava/lang/String;Z)V

    return-void
.end method
