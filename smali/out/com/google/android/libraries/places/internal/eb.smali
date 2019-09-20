.class public final synthetic Lcom/google/android/libraries/places/internal/eb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/ff;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/ff;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/eb;->a:Lcom/google/android/libraries/places/internal/ff;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/eb;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ff;->s()Z

    move-result p1

    return p1
.end method
