import crafttweaker.api.item.IItemStack;


val stairsMap = {
    <item:minecraft:oak_planks> : <item:minecraft:oak_stairs>,
    <item:minecraft:spruce_planks> : <item:minecraft:spruce_stairs>,
    <item:minecraft:birch_planks> : <item:minecraft:birch_stairs>,
    <item:minecraft:jungle_planks> : <item:minecraft:jungle_stairs>,
    <item:minecraft:acacia_planks> : <item:minecraft:acacia_stairs>,
    <item:minecraft:dark_oak_planks> : <item:minecraft:dark_oak_stairs>,
    <item:minecraft:mangrove_planks> : <item:minecraft:mangrove_stairs>,
    <item:minecraft:cherry_planks> : <item:minecraft:cherry_stairs>,
    <item:minecraft:bamboo_planks> : <item:minecraft:bamboo_stairs>,
    <item:minecraft:crimson_planks> : <item:minecraft:crimson_stairs>,
    <item:minecraft:warped_planks> : <item:minecraft:warped_stairs>
} as IItemStack[IItemStack];

for planks, stairs in stairsMap {
    craftingTable.removeByName(stairs.registryName.namespace + ":" + stairs.registryName.path);
    craftingTable.addShaped("custom_" + stairs.registryName.path, stairs * 6, [
        [planks, <item:minecraft:air>, <item:minecraft:air>],
        [planks, planks, <item:minecraft:air>],
        [planks, planks, planks]
    ]);
}
