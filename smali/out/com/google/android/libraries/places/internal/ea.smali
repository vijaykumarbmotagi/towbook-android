.class public final synthetic Lcom/google/android/libraries/places/internal/ea;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final a:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/libraries/places/internal/ea;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/ea;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/ea;->a:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
