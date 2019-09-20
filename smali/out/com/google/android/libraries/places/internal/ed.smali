.class public final synthetic Lcom/google/android/libraries/places/internal/ed;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/ff;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/ff;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ed;->a:Lcom/google/android/libraries/places/internal/ff;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ed;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/ff;->a(I)Z

    move-result p1

    return p1
.end method
