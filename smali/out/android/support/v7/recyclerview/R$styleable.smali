.class public final Landroid/support/v7/recyclerview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CoordinatorLayout:[I

.field public static final CoordinatorLayout_Layout:[I

.field public static final CoordinatorLayout_Layout_android_layout_gravity:I = 0x0

.field public static final CoordinatorLayout_Layout_layout_anchor:I = 0x1

.field public static final CoordinatorLayout_Layout_layout_anchorGravity:I = 0x2

.field public static final CoordinatorLayout_Layout_layout_behavior:I = 0x3

.field public static final CoordinatorLayout_Layout_layout_dodgeInsetEdges:I = 0x4

.field public static final CoordinatorLayout_Layout_layout_insetEdge:I = 0x5

.field public static final CoordinatorLayout_Layout_layout_keyline:I = 0x6

.field public static final CoordinatorLayout_keylines:I = 0x0

.field public static final CoordinatorLayout_statusBarBackground:I = 0x1

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x3

.field public static final FontFamilyFont_fontStyle:I = 0x4

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x2

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x4

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x6

.field public static final RecyclerView_layoutManager:I = 0x7

.field public static final RecyclerView_reverseLayout:I = 0x8

.field public static final RecyclerView_spanCount:I = 0x9

.field public static final RecyclerView_stackFromEnd:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    .line 151
    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->CoordinatorLayout:[I

    const/4 v0, 0x7

    .line 154
    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->CoordinatorLayout_Layout:[I

    const/4 v0, 0x6

    .line 162
    new-array v1, v0, [I

    fill-array-data v1, :array_44

    sput-object v1, Landroid/support/v7/recyclerview/R$styleable;->FontFamily:[I

    .line 169
    new-array v0, v0, [I

    fill-array-data v0, :array_54

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->FontFamilyFont:[I

    const/16 v0, 0xb

    .line 176
    new-array v0, v0, [I

    fill-array-data v0, :array_64

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    return-void

    nop

    :array_2a
    .array-data 4
        0x7f040125
        0x7f0401fb
    .end array-data

    :array_32
    .array-data 4
        0x10100b3
        0x7f04012c
        0x7f04012d
        0x7f04012e
        0x7f04015a
        0x7f040164
        0x7f040165
    .end array-data

    :array_44
    .array-data 4
        0x7f0400f4
        0x7f0400f5
        0x7f0400f6
        0x7f0400f7
        0x7f0400f8
        0x7f0400f9
    .end array-data

    :array_54
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f0400f2
        0x7f0400fa
        0x7f0400fb
    .end array-data

    :array_64
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f0400eb
        0x7f0400ec
        0x7f0400ed
        0x7f0400ee
        0x7f0400ef
        0x7f04012b
        0x7f0401d1
        0x7f0401f1
        0x7f0401f7
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
