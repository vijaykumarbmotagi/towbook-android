.class public final synthetic Lcom/google/android/libraries/places/internal/ec;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/ff;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/ff;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ec;->a:Lcom/google/android/libraries/places/internal/ff;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ec;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ff;->r()V

    return-void
.end method
