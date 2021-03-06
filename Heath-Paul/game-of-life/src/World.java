import java.util.HashSet;
import java.util.Set;

public class World {
	private Set<Cell> cells = new HashSet<Cell>();

	public void addCell(Cell cell) {
		if (!cells.add(cell)) {
			throw new IllegalArgumentException("Already have cell: " + cell);
		}
	}

	public void iterate() {
		Set<Cell> newCells = new HashSet<Cell>();
		Set<Coordinate> aliveCoordinates = new HashSet<Coordinate>();

		for (Cell cell : cells) {
			Set<Coordinate> neighboringCells = cell.coordinate
					.getNeighborCoordinates();
			neighboringCells.retainAll(cells);
			int neighboringCellsSize = neighboringCells.size();

			if (cell.alive) {

				if ((neighboringCellsSize == 2) || (neighboringCellsSize == 3)) {
					newCells.add(cell);
				}
			} else {

			}
		}

		this.cells = newCells;
	}

	public Set<Cell> getCells() {
		return cells;
	}
}
